Attribute VB_Name = "ArchitectureRebuildV1"
Option Explicit

Private Const SLIDE_W As Single = 960
Private Const SLIDE_H As Single = 540

Public Sub BuildArchitectureSlide()
    Dim pres As Presentation
    Dim sld As Slide

    Set pres = ResolvePresentation()
    If pres Is Nothing Then
        MsgBox "没有可用的演示文稿。请先打开一个 PowerPoint 文件后再运行宏。", vbExclamation
        Exit Sub
    End If
    Set sld = pres.Slides.Add(pres.Slides.Count + 1, ppLayoutBlank)

    pres.PageSetup.SlideWidth = SLIDE_W
    pres.PageSetup.SlideHeight = SLIDE_H

    DrawBackground sld
    DrawHeader sld
    DrawPhases sld
    DrawEngineLayer sld
    DrawSourceLayer sld
End Sub

Private Function ResolvePresentation() As Presentation
    On Error Resume Next
    Set ResolvePresentation = Application.ActivePresentation
    On Error GoTo 0

    If ResolvePresentation Is Nothing Then
        If Application.Presentations.Count > 0 Then
            Set ResolvePresentation = Application.Presentations(1)
        End If
    End If
End Function

Private Sub DrawBackground(sld As Slide)
    With sld.Background.Fill
        .Visible = msoTrue
        .ForeColor.RGB = RGB(241, 246, 251)
        .Solid
    End With

    AddRoundBox sld, 10, 34, 940, 458, RGB(255, 255, 255), RGB(15, 79, 147), 1.4, 0.12
    AddRoundBox sld, 14, 48, 932, 246, RGB(248, 251, 255), RGB(15, 79, 147), 1, 0.08
    AddRoundBox sld, 14, 302, 932, 44, RGB(248, 251, 255), RGB(15, 79, 147), 1, 0.08
    AddRoundBox sld, 14, 354, 932, 78, RGB(248, 251, 255), RGB(15, 79, 147), 1, 0.08
End Sub

Private Sub DrawHeader(sld As Slide)
    AddText sld, "2. 一期建设方案—系统架构", 24, 8, 280, 18, 18, True, RGB(0, 0, 0), "Microsoft YaHei"
    AddLine sld, 22, 28, 930, 28, RGB(21, 104, 182), 1.6

    AddText sld, "分期规划层", 425, 38, 110, 14, 10.5, True, RGB(21, 104, 182), "Microsoft YaHei"
    AddText sld, "平台引擎层", 430, 292, 100, 14, 10.5, True, RGB(21, 104, 182), "Microsoft YaHei"
    AddText sld, "数据源接入层", 424, 344, 112, 14, 10.5, True, RGB(21, 104, 182), "Microsoft YaHei"
End Sub

Private Sub DrawPhases(sld As Slide)
    DrawPhaseOne sld
    DrawPhaseTwo sld
    DrawPhaseThree sld
End Sub

Private Sub DrawPhaseOne(sld As Slide)
    AddRoundBox sld, 20, 58, 286, 216, RGB(248, 255, 246), RGB(184, 223, 175), 1, 0.08
    AddText sld, "一期规划", 34, 70, 120, 34, 28, True, RGB(76, 151, 54), "Microsoft YaHei"
    AddPill sld, "基础建设", 254, 72, 62, 20, RGB(107, 200, 86), RGB(107, 200, 86), RGB(255, 255, 255), 8
    AddText sld, "一期围绕集团互联网、广域网、内网重点区域，建设流量采集、分析与监测能力，落地主动预警、高效排障、流量审视、实时监测四个目标。", 38, 112, 246, 40, 7.2, False, RGB(78, 105, 131), "Microsoft YaHei"

    DrawCard sld, 40, 150, 116, 72, RGB(255, 255, 255), RGB(184, 223, 175), RGB(76, 151, 54), "场景监测范围", "互联网 • 广域网 • 内网重点 • 视频会议"
    DrawCard sld, 166, 150, 126, 72, RGB(255, 255, 255), RGB(184, 223, 175), RGB(76, 151, 54), "可视化建设能力", "网络可视化 • 流量可视化 • 业务可视化"
    DrawCard sld, 40, 248, 116, 72, RGB(255, 255, 255), RGB(184, 223, 175), RGB(76, 151, 54), "运维分析能力", "故障预警 • 故障定位 • 趋势分析"
    DrawCard sld, 166, 248, 126, 72, RGB(255, 255, 255), RGB(184, 223, 175), RGB(76, 151, 54), "告警预警能力", "统一监测 • 主动预警 • 高效排障 • 实时监测"
End Sub

Private Sub DrawPhaseTwo(sld As Slide)
    AddRoundBox sld, 318, 58, 198, 216, RGB(246, 251, 255), RGB(184, 213, 240), 1, 0.08
    AddText sld, "二期规划", 336, 82, 110, 26, 22, True, RGB(15, 79, 147), "Microsoft YaHei"
    AddPill sld, "全云扩展 + AI试点", 462, 72, 74, 20, RGB(43, 134, 209), RGB(43, 134, 209), RGB(255, 255, 255), 7.2
    AddText sld, "二期由局部试点扩展至全云重点资源与关键应用，补齐云网络、云服务、云原生与业务观测，并开展智能分析试点。", 338, 112, 164, 38, 7, False, RGB(78, 105, 131), "Microsoft YaHei"

    DrawCardBlue sld, 346, 152, 82, 68, "全云资源与服务监控", "云主机 • 云网络" & vbCrLf & "存储 • 关键云服务"
    DrawCardBlue sld, 438, 152, 74, 68, "云网络与云原生监控", "云网络拓扑" & vbCrLf & "容器监控 • 运行状态"
    DrawCardBlue sld, 346, 232, 82, 68, "应用与业务观测扩充", "应用拓扑 • 接口分析" & vbCrLf & "业务链路"
    DrawCardBlue sld, 438, 232, 74, 68, "AI 分析能力试点", "异常解释 • 问题问答" & vbCrLf & "定位建议"
End Sub

Private Sub DrawPhaseThree(sld As Slide)
    AddRoundBox sld, 526, 58, 218, 216, RGB(245, 252, 252), RGB(166, 223, 218), 1, 0.08
    AddText sld, "三期规划", 544, 82, 110, 26, 22, True, RGB(20, 126, 134), "Microsoft YaHei"
    AddPill sld, "全AI + AIOps", 690, 72, 68, 20, RGB(20, 126, 134), RGB(20, 126, 134), RGB(255, 255, 255), 7.2
    AddText sld, "三期面向智能运营闭环建设，将试点能力沉淀为平台能力，覆盖异常识别、根因推理、处置建议与知识协同。", 546, 112, 178, 38, 7, False, RGB(78, 105, 131), "Microsoft YaHei"

    DrawCardTeal sld, 554, 152, 80, 68, "AIOps 分析引擎", "异常检测 • 事件关联" & vbCrLf & "动态基线"
    DrawCardTeal sld, 644, 152, 92, 68, "智能根因与建议", "根因推理 • 影响判断" & vbCrLf & "处置建议"
    DrawCardTeal sld, 554, 232, 80, 68, "AI 助手与知识体", "智能问答 • 案例复用" & vbCrLf & "知识服务"
    DrawCardTeal sld, 644, 232, 92, 68, "闭环运营与治理", "预警处置 • 验证复盘" & vbCrLf & "运营治理"
End Sub

Private Sub DrawEngineLayer(sld As Slide)
    DrawChip sld, 20, 315, 68, 18, RGB(243, 251, 239), RGB(184, 223, 175), RGB(76, 151, 54), "统一采集接入"
    DrawChip sld, 96, 315, 94, 18, RGB(243, 251, 239), RGB(184, 223, 175), RGB(76, 151, 54), "数据处理与存储"
    DrawChip sld, 198, 315, 94, 18, RGB(243, 251, 239), RGB(184, 223, 175), RGB(76, 151, 54), "指标 / 链路分析"
    DrawChip sld, 300, 315, 110, 18, RGB(243, 251, 239), RGB(184, 223, 175), RGB(76, 151, 54), "拓扑与关系建模"
    DrawChip sld, 424, 315, 142, 18, RGB(238, 246, 253), RGB(184, 213, 240), RGB(15, 79, 147), "开放集成与协同治理"
    DrawChip sld, 580, 315, 76, 18, RGB(232, 249, 247), RGB(166, 223, 218), RGB(20, 126, 134), "智能引擎"
    DrawChip sld, 668, 315, 98, 18, RGB(232, 249, 247), RGB(166, 223, 218), RGB(20, 126, 134), "AI / AIOps 分析能力"
End Sub

Private Sub DrawSourceLayer(sld As Slide)
    AddPill sld, "虚拟网络", 284, 352, 58, 20, RGB(43, 134, 209), RGB(43, 134, 209), RGB(255, 255, 255), 7.2

    DrawSourceCard sld, 20, 368, 310, 54, RGB(248, 255, 246), RGB(184, 223, 175), RGB(76, 151, 54), "物理网络", "承接互联网出口、广域网链路、核心交换、汇聚设备与数据中心关键网络流量和性能接入。" & vbCrLf & "互联网出口 • 广域网链路 • 核心交换 • 汇聚设备 • 数据中心核心"
    DrawSourceCard sld, 344, 368, 234, 54, RGB(246, 251, 255), RGB(184, 213, 240), RGB(15, 79, 147), "华为云", "承接 VPC、ECS、EIP / ELB / NAT、EVS / 对象存储、中间件 / 数据库等云资源监测数据。" & vbCrLf & "VPC • ECS • EIP / ELB / NAT • EVS / 对象存储"
    DrawSourceCard sld, 590, 368, 322, 54, RGB(246, 251, 255), RGB(184, 213, 240), RGB(15, 79, 147), "容器", "承接 Kubernetes、Node / Pod、Service、Ingress、CNI 等容器网络与云原生业务监控数据。" & vbCrLf & "Kubernetes • Node / Pod • Service • Ingress • CNI"
End Sub

Private Sub DrawCardBlue(sld As Slide, x As Single, y As Single, w As Single, h As Single, ttl As String, body As String)
    DrawCard sld, x, y, w, h, RGB(255, 255, 255), RGB(184, 213, 240), RGB(15, 79, 147), ttl, body
End Sub

Private Sub DrawCardTeal(sld As Slide, x As Single, y As Single, w As Single, h As Single, ttl As String, body As String)
    DrawCard sld, x, y, w, h, RGB(255, 255, 255), RGB(166, 223, 218), RGB(20, 126, 134), ttl, body
End Sub

Private Sub DrawCard(sld As Slide, x As Single, y As Single, w As Single, h As Single, fillRgb As Long, lineRgb As Long, titleRgb As Long, ttl As String, body As String)
    AddRoundBox sld, x, y, w, h, fillRgb, lineRgb, 1, 0.08
    AddText sld, ttl, x + 6, y + 6, w - 12, 15, 11, True, titleRgb, "Microsoft YaHei"
    AddText sld, body, x + 6, y + 26, w - 12, h - 28, 7.2, False, RGB(78, 105, 131), "Microsoft YaHei"
End Sub

Private Sub DrawSourceCard(sld As Slide, x As Single, y As Single, w As Single, h As Single, fillRgb As Long, lineRgb As Long, titleRgb As Long, ttl As String, body As String)
    AddRoundBox sld, x, y, w, h, fillRgb, lineRgb, 1, 0.08
    AddText sld, ttl, x + 6, y + 4, w - 12, 14, 10, True, titleRgb, "Microsoft YaHei"
    AddText sld, body, x + 6, y + 18, w - 12, h - 18, 6.4, False, RGB(78, 105, 131), "Microsoft YaHei"
End Sub

Private Sub DrawChip(sld As Slide, x As Single, y As Single, w As Single, h As Single, fillRgb As Long, lineRgb As Long, fontRgb As Long, txt As String)
    AddRoundBox sld, x, y, w, h, fillRgb, lineRgb, 1, 0.08
    AddCenteredText sld, txt, x, y + 1, w, h - 2, 7.4, True, fontRgb, "Microsoft YaHei"
End Sub

Private Sub AddPill(sld As Slide, txt As String, x As Single, y As Single, w As Single, h As Single, fillRgb As Long, lineRgb As Long, fontRgb As Long, fs As Single)
    AddRoundBox sld, x, y, w, h, fillRgb, lineRgb, 1, 0.18
    AddCenteredText sld, txt, x, y + 1, w, h - 2, fs, True, fontRgb, "Microsoft YaHei"
End Sub

Private Sub AddRoundBox(sld As Slide, x As Single, y As Single, w As Single, h As Single, fillRgb As Long, lineRgb As Long, lineW As Single, radius As Double)
    Dim shp As Shape
    Set shp = sld.Shapes.AddShape(msoShapeRoundedRectangle, x, y, w, h)
    shp.Adjustments.Item(1) = radius
    shp.Fill.ForeColor.RGB = fillRgb
    shp.Line.ForeColor.RGB = lineRgb
    shp.Line.Weight = lineW
End Sub

Private Sub AddLine(sld As Slide, x1 As Single, y1 As Single, x2 As Single, y2 As Single, rgbVal As Long, wt As Single)
    Dim shp As Shape
    Set shp = sld.Shapes.AddLine(x1, y1, x2, y2)
    shp.Line.ForeColor.RGB = rgbVal
    shp.Line.Weight = wt
End Sub

Private Sub AddText(sld As Slide, txt As String, x As Single, y As Single, w As Single, h As Single, fs As Single, isBold As Boolean, rgbVal As Long, fontName As String)
    Dim shp As Shape
    Set shp = sld.Shapes.AddTextbox(msoTextOrientationHorizontal, x, y, w, h)
    With shp.TextFrame2
        .MarginLeft = 0
        .MarginRight = 0
        .MarginTop = 0
        .MarginBottom = 0
        .WordWrap = msoTrue
        .TextRange.Text = txt
        .TextRange.Font.NameFarEast = fontName
        .TextRange.Font.Name = fontName
        .TextRange.Font.Size = fs
        .TextRange.Font.Bold = isBold
        .TextRange.Font.Fill.ForeColor.RGB = rgbVal
        .VerticalAnchor = msoAnchorTop
    End With
    shp.Line.Visible = msoFalse
    shp.Fill.Visible = msoFalse
End Sub

Private Sub AddCenteredText(sld As Slide, txt As String, x As Single, y As Single, w As Single, h As Single, fs As Single, isBold As Boolean, rgbVal As Long, fontName As String)
    Dim shp As Shape
    Set shp = sld.Shapes.AddTextbox(msoTextOrientationHorizontal, x, y, w, h)
    With shp.TextFrame2
        .MarginLeft = 0
        .MarginRight = 0
        .MarginTop = 0
        .MarginBottom = 0
        .WordWrap = msoFalse
        .TextRange.Text = txt
        .TextRange.Font.NameFarEast = fontName
        .TextRange.Font.Name = fontName
        .TextRange.Font.Size = fs
        .TextRange.Font.Bold = isBold
        .TextRange.Font.Fill.ForeColor.RGB = rgbVal
        .TextRange.ParagraphFormat.Alignment = msoAlignCenter
        .VerticalAnchor = msoAnchorMiddle
    End With
    shp.Line.Visible = msoFalse
    shp.Fill.Visible = msoFalse
End Sub
