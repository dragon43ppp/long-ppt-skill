param(
  [Parameter(Mandatory = $true)]
  [string]$BaseUrl,

  [Parameter(Mandatory = $true)]
  [string]$ApiKey,

  [string]$Prompt = "Clean enterprise architecture diagram with boxes, lines, white background, and Chinese labels",
  [string]$Model = "gpt-image-2",
  [string]$Size = "1536x1024",
  [string]$OutFile = ".\\probe_image_result.json"
)

$ErrorActionPreference = "Stop"

function Invoke-Probe {
  param(
    [string]$Name,
    [hashtable]$Headers,
    [string]$Uri,
    [string]$Body
  )

  try {
    $resp = Invoke-RestMethod -Uri $Uri -Method Post -Headers $Headers -Body $Body -TimeoutSec 180
    return @{
      ok = $true
      mode = $Name
      response = $resp
    }
  } catch {
    return @{
      ok = $false
      mode = $Name
      error = $_.Exception.Message
    }
  }
}

$endpoint = $BaseUrl.TrimEnd("/")
if (-not $endpoint.EndsWith("/images/generations")) {
  if (-not $endpoint.EndsWith("/v1")) {
    $endpoint = "$endpoint/v1"
  }
  $endpoint = "$endpoint/images/generations"
}

$payload = @{
  model = $Model
  prompt = $Prompt
  size = $Size
} | ConvertTo-Json -Depth 10

$attempts = @(
  @{
    Name = "bearer"
    Headers = @{
      Authorization = "Bearer $ApiKey"
      "Content-Type" = "application/json"
    }
  },
  @{
    Name = "x-api-key"
    Headers = @{
      "x-api-key" = $ApiKey
      "Content-Type" = "application/json"
    }
  },
  @{
    Name = "api-key"
    Headers = @{
      "api-key" = $ApiKey
      "Content-Type" = "application/json"
    }
  },
  @{
    Name = "user-key"
    Headers = @{
      "user-key" = $ApiKey
      "Content-Type" = "application/json"
    }
  }
)

$results = @()
foreach ($attempt in $attempts) {
  $result = Invoke-Probe -Name $attempt.Name -Headers $attempt.Headers -Uri $endpoint -Body $payload
  $results += $result
  if ($result.ok) {
    break
  }
}

$out = @{
  endpoint = $endpoint
  model = $Model
  size = $Size
  results = $results
} | ConvertTo-Json -Depth 20

$outPath = [System.IO.Path]::GetFullPath($OutFile)
$outDir = Split-Path -Parent $outPath
if ($outDir -and -not (Test-Path -LiteralPath $outDir)) {
  New-Item -ItemType Directory -Path $outDir -Force | Out-Null
}

Set-Content -LiteralPath $outPath -Value $out -Encoding UTF8
Write-Host "Probe result saved to: $outPath"
