# Laser Speed & Power Setting Optimization

|||
|-|-|
| ![Test Example Image](speed-power-images/cardboard-natural-small.jpg)  | This page provides speed and power setting optimization test results for the Sainsmart 5.5W laser on a variety of materials.  Test patterns were generated with the Python [test pattern G-Code generator](https://github.com/doug-harriman/gcode-utilities/blob/main/gcode_doc.py).  Images for all tests are stored in the [speed-power-images](speed-power-images/) directory.  Results that have been analyzed are in the table below. |

## Marking

| Material & Image Link | Vector Outline Power/Speed [mm/min]| Vector Infill Power/Speed [mm/min] | Notes |
| :-------------------- | :------------------: | :-----------------: | :---- |
| [J-Tech Photonics Laser Shielding](speed-power-images/acrylic-J-Tech-Photonics-Orange-Laser-Shielding.jpg) | 60% / 800 | 40% / 800 | [Purchase](https://jtechphotonics.com/?product=445nm-laser-shielding) |
| [Acrylic, Extruded, Clear](speed-power-images/acrylic-extruded-clear.jpg)| 60% / 400 | TBD | Coated with water washable [Black Crayola Tempera Paint](https://www.amazon.com/gp/product/B0000AQMT6) first | 
| [Black Walnut](speed-power-images/wood-black-walnut.jpg)| 70% / 1000 | 50% / 1000 |  | 

## Cutting

| Material  |  Cutting Power | Cutting Speed [mm/min] | Passes | Step Down [mm] | Notes |
| :-------- | :------------: | :-----------: | :----: | :-------: | :---- |
| 1.4 mm Brown Leather | 80% | 80 | 6 | 0.25 | Taped on both sides. Top minizes burn marks, bottom holds flat. | 
| 2.0 mm Cardboard | 80% | 320 | 3 | 1.0 | 1 pass per mm + a finish pass at bottom. |
| 3.0 mm Foamboard | 80% | 320 | 1 | 1.0 |  |
