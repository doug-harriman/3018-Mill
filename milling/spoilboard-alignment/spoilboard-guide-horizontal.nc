(Horizontal Guide Line for Spoilboard)

(Machine Setup)
G90  (Absolute Position Mode)
G21  (Units = millimeters)

G0 X2.000 Y0.000 F3000.0
G0 Z0.000
G1 F500.0
M4 S400.0 (Laser on @ 40%)
G1 X152.000 Y0.000
M5        (Laser off)

M2 (End Document)
