# Homing Plate
* [Makerparts XYZ Touch Probe Basic](https://makerparts.ca/products/makerparts-xyz-touch-plate)
  * $37 CAD at time of purchase.  $16 S&H (yikes!)
* Dimensions for homing:

  | Parameter | Value|
  | --- | --- |
  | Z Thickness    | 6.38 mm |
  | Hole Diameter  | 18.6 mm |
  | Fast Feed Rate | 50 mm/min |
  | Slow Feed Rate | 20 mm/min | 

# Connector
Replaced spade connectors on PCA end with JST-XH 2-pin connector.
* [Connector & Crip Tool Kit](https://www.amazon.com/gp/product/B07ZK5F8HP/)
* $40 USD at time of purchase.

# Homing Alg
* Implemented as macro in [CNCjs](https://cnc.js.org/)
* [CNCjs macro docs](https://github.com/cncjs/CNCjs-Macros).
  * See this repo for example 3-axis homing macros.

## 3D homing alg for Makerparts XYZ Touch Probe Basic

```
;Start with end mill in hole, BELOW Z surface of probe

; Wait until the planner queue is empty
%wait

; Set user-defined variables
%Z_PROBE_THICKNESS = 6.38	;thickness of Z probe plate
%PROBE_DISTANCE = 20  ;Max distance for a probe motion
%PROBE_FEEDRATE_A = 50
%PROBE_FEEDRATE_B = 20
%PROBE_MAJOR_RETRACT = 10  ;distance of retract before probing opposite side
%Z_PROBE = 	; Lift out of hole and Max Z probe
%Z_PROBE_KEEPOUT = 5	;distance (X&Y) from edge of hole for Z probe 
%Z_FINAL = 5	;final height above probe


%UNITS=modal.units
%DISTANCE=modal.distance


G91 ; Relative positioning
G21 ;Use millimeters

; Probe toward right side of hole with a maximum probe distance
G38.2 X[PROBE_DISTANCE] F[PROBE_FEEDRATE_A]
G0 X-1 ;retract 1mm
G38.2 X5 F[PROBE_FEEDRATE_B] ;Slow Probe
%X_RIGHT = posx
G0 X-[PROBE_MAJOR_RETRACT]	;retract

; Probe toward Left side of hole with a maximum probe distance
G38.2 X-[PROBE_DISTANCE] F[PROBE_FEEDRATE_A]
G0 X1 ;retract 1mm
G38.2 X-5 F[PROBE_FEEDRATE_B] ;Slow Probe
%X_LEFT = posx
%X_CHORD = X_RIGHT - X_LEFT
G0 X[X_CHORD/2]
%X_CENTER = posx	;get X-value of hole center for some reason
; A dwell time of one second to make sure the planner queue is empty
G4 P1
G10L20X0

; Probe toward top side of hole with a maximum probe distance
G38.2 Y[PROBE_DISTANCE] F[PROBE_FEEDRATE_A]
G0 Y-1 ;retract 1mm
G38.2 Y5 F[PROBE_FEEDRATE_B] ;Slow Probe
%Y_TOP = posy
G0 Y-[PROBE_MAJOR_RETRACT]	;retract
; Probe toward bottom side of hole with a maximum probe distance
G38.2 Y-[PROBE_DISTANCE] F[PROBE_FEEDRATE_A]
G0 Y1 ;retract 1mm
G38.2 Y-5 F[PROBE_FEEDRATE_B] ;Slow Probe
%Y_BTM = posy
%Y_CHORD = Y_TOP - Y_BTM
%HOLE_RADIUS = Y_CHORD/2
G0 Y[HOLE_RADIUS]
%Y_CENTER = posy	;get Y-value of hole center for some reason
; A dwell time of one second to make sure the planner queue is empty
G4 P1
G10L20Y0

;Get to Z probe location
G0 Z[Z_PROBE]
X[HOLE_RADIUS + Z_PROBE_KEEPOUT] Y[HOLE_RADIUS + Z_PROBE_KEEPOUT]

; Probe Z
G38.2 Z-[Z_PROBE] F[PROBE_FEEDRATE_A]
G0 Z1 ;retract 2mm
G38.2 Z-5 F[PROBE_FEEDRATE_B] ;Slow Probe
G10L20Z[Z_PROBE_THICKNESS]
G0 Z[Z_FINAL]	;raise Z
G90	;absolute distance
G0 X0 Y0
; A dwell time of one second to make sure the planner queue is empty
G4 P1

[UNITS] [DISTANCE] ;restore unit and distance modal state
```
