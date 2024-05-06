# Feeds and Speeds

Note: All units in millimeters and millimeters per minute unless otherwise noted.

## 300 Watt Spindle

| Material | Tool | Feed Rate | Depth of Cut |  Stepover | Direction | Notes |
| :-: | :-:  | :-: | :-: | :-: | :-: | ----- |
| Wood, Black Walnut | [3.175 mm flat end mill, 2-flute upcut](tools-n-bits.md#3175mm-dia-2-flute-upcut-carbide)| 1000 | 2.0 | 1.4 | Climb/Left Hand |

### Untested

Aluminum parameter recommendations per [Reddit post](https://www.reddit.com/r/hobbycnc/comments/1c5xfdf/genmitsu_3020_zaxis_500w_upgrade_vs_6061/)

(converted from English to metric)

Used "Tap Magic" cutting fluid with cut.

| Material | Tool | Feed Rate (mm/min) | Depth of Cut (mm) |  Stepover (mm) | Direction | Notes |
| :-: | :-:  | :-: | :-: | :-: | :-: | ----- |
| 6061 Aluminum | 3.175mm 2-flute upcut stub | 500 | 0.75 | 0.25 | Climb |Worked well with adaptive clearing|

|Test | Width [mm]|	Depth [mm]|	DOC [mm]|	Stepover [mm]|	Feed [mm/min]|	Material Removal Rate [mm^3/min]| Notes|
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|1|	6|	3|	0.75|	0.25|	500|	93.75||
|2|	6|	1|	1.00|	0.25|	500|	125||
|3|	6|	1.5|	1.50|	0.25|	500|	187.5||
|4|	6|	0.75|	0.75|	0.50|	500|	187.5||
|5|	6|	1|	1.00|	0.50|	500|	250||
|6|	6|	1|	1.00|	0.25|	750|	187.5||
|7|	6|	1|	1.00|	0.50|	750|	375||

To test:
- Faster: 750 mm/min
- Deeper: 1.5, 2.5
- Stepover: 0.5

## 3018 Pro Stock Spindle

| Material | Tool | Feed Rate | Depth of Cut |  Stepover | Direction | Notes |
| :-: | :-: | :-: | :-: | :-: | :-: | ----- |
| Wood, Pine         | [3.175 mm flat end mill, 2-flute upcut](tools-n-bits.md#3175mm-dia-2-flute-upcut-carbide)| 300 | TBD | TBD | Climb/Left Hand |
| Wood, Black Walnut | [3.175 mm flat end mill, 2-flute upcut](tools-n-bits.md#3175mm-dia-2-flute-upcut-carbide)| 300 | 0.5 | 0.75 | Climb/Left Hand |
| Acrylic, Extruded, Rough  | [3.175 mm flat end mill, Single flute upcut](tools-n-bits.md#3175mm-dia-single-flute-upcut-carbide) | 1000 | 1 | 0.7 |  Conventional/Right Hand||
| Acrylic, Extruded, Finish | [3.175 mm flat end mill, Single flute upcut](tools-n-bits.md#3175mm-dia-single-flute-upcut-carbide) | 750 | 0.1 | 1.5 |  Conventional/Right Hand||
| Acrylic, Extruded  | [1.0 mm flat end mill, 2-flute upcut](tools-n-bits.md#10mm-dia-2-flute-upcut-carbide) |  600 | 0.25 | TBD |  Conventional/Right Hand||
| ABS | [0.5 mm flat end mill, 2-flute upcut](https://www.adafruit.com/product/2072) | 1000 | 0.3 | 0.1 | Conventional/Right Hand | | 
| ABS | [3.175 mm flat end mill, 2-flute upcut](tools-n-bits.md#3175mm-dia-2-flute-upcut-carbide) | 1000 | 0.4 | 0.25 | Conventional/Right Hand | |
