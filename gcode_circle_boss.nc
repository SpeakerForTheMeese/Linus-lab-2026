%
G90 G21 G17 G54 ; program begins at bottom left corner of stock. 
M06 T1
G43 H1
M03 S3000  
M08

G00 Z5 X40 Y20
G01 Z-2 F100
G02 X40 Y60 I0 J20 F200 ; clockwise arc
G02 X40 Y20 I0 J-20 F200 ; clockwise arc
G01 Z5 F100
G01 Z-4 
G02 X40 Y60 I0 J20 F200 ; clockwise arc
G02 X40 Y20 I0 J-20 F200 ; clockwise arc
G01 Z5 F100
G01 Z-6
G02 X40 Y60 I0 J20 F200 ; clockwise arc
G02 X40 Y20 I0 J-20 F200 ; clockwise arc
G01 Z5 F100
G01 Z-8
G02 X40 Y60 I0 J20 F200 ; clockwise arc
G02 X40 Y20 I0 J-20 F200 ; clockwise arc
G01 Z5 F100
G01 Z-10
G02 X40 Y60 I0 J20 F200 ; clockwise arc
G02 X40 Y20 I0 J-20 F200 ; clockwise arc
G01 Z5 F100

M30
