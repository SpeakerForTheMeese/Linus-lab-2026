%
O0001
N10  G90 G20 G17 G40 G49 G80   ; Setup: absolute, inches, XY plane, cancel comps
N20  T1 M06                     ; Load tool 1 (0.5" endmill)
N30  G43 H1 S3500 M03           ; Length offset, spindle ON 3500 RPM
N40  G00 X0.25 Y0.25 Z1.0       ; Rapid to start position, safe Z
N50  G01 Z-0.125 F5.0           ; Plunge — pass 1
N60  G01 X0.25 Y2.75 F15.0      ; Raster sweep (abbreviated — add columns as needed)
N70  G01 X0.45 Y2.75
N80  G01 X0.45 Y0.25
N90  G01 Z-0.25 F5.0            ; Plunge — pass 2
N100 G01 X0.45 Y2.75 F15.0
N110 G01 X0.65 Y2.75            ; (continue raster pattern to X1.75 in 0.2" steps)
N120 G01 Z-0.375 F5.0           ; Plunge — pass 3
N130 G01 X0.65 Y0.25 F15.0
N140 G01 Z-0.5 F5.0             ; Plunge — pass 4, full depth
N150 G01 X0.65 Y2.75 F15.0
N160 G00 Z0.1                   ; Retract
N170 G00 X0.25 Y0.25            ; Finish contour start
N180 G01 Z-0.5 F5.0             ; Plunge to full depth
N190 G01 X0.25 Y2.75 F12.0      ; Left wall
N200 G01 X1.75 Y2.75            ; Back wall
N210 G01 X1.75 Y0.25            ; Right wall
N220 G01 X0.25 Y0.25            ; Front wall
N230 G00 Z1.0                   ; Retract
N240 M05 M30                    ; Spindle off, end program
%
