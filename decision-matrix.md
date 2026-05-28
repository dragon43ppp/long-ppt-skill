# Long-ppt Decision Matrix

## Route selection

| Page type | Keep visual fidelity first | Need normal editable PPTX | Need macro-driven rebuild | Recommended route |
|-----------|----------------------------|---------------------------|---------------------------|-------------------|
| Cover / atmosphere page | Yes | No | No | `long-ppt-image` |
| Background / backplate | Yes | No | No | `long-ppt-image` |
| Dashboard screenshot | Yes | Partial | No | `long-ppt-hybrid` |
| Monitoring big screen | Yes | Partial | No | `long-ppt-hybrid` |
| Architecture diagram | No | Yes | Optional | `long-ppt-native` |
| Attachment page | No | Yes | Optional | `long-ppt-native` |
| Framework page | No | Yes | Optional | `long-ppt-native` |
| Structured enterprise layout | Maybe | Yes | Optional | `long-ppt-native` |
| PowerPoint macro workflow page | No | Yes | Yes | `long-ppt-vba` |

## Practical rule

- If the page is image-heavy, do not force full native reconstruction.
- If the page is structure-heavy, native reconstruction is usually more valuable.
- If the page still looks visually weak, redesign before reconstruction.
- If the user wants future reuse, prefer editable objects over flat screenshots whenever practical.
