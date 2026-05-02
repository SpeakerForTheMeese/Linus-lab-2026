%
O0001
N10  G90 G20 G17 G40 G49 G80   
N20  T1 M06                     ; Load tool 1 (0.5" endmill)
N30  G43 H1 S3500 M03           ; Length offset, spindle ON 3500 RPM
N40  G00 X0.25 Y0.25 Z1.0       ; Rapid to start position, safe Z
N50  G01 Z-0.125 F5.0           ; Plunge — pass 1
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

