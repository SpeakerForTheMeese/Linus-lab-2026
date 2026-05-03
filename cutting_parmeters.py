

import math


def recomended_feeds_speeds(material, tool_diameter_mm):
    if material == "steel":
        vc = 80
        fz = .003
        n_flutes = 4
    elif material == "aluminium":
        vc = 200
        fz = .05
        n_flutes = 4
    elif material == "plastic":
        vc = 120
        fz = .04
        n_flutes = 2
    spindle_speed_rpm = (vc * 1000) / (math.pi * tool_diameter_mm)
    cutting_speed_mm_min = spindle_speed_rpm * n_flutes * fz
    return spindle_speed_rpm, cutting_speed_mm_min

printable_data = [("Aluminium", 6, recomended_feeds_speeds("aluminium", 6)),
                  ("Aluminium", 10, recomended_feeds_speeds("aluminium", 10)),
                  ("Aluminium", 16, recomended_feeds_speeds("aluminium", 16)),
                  ("Steel", 6, recomended_feeds_speeds("steel", 6)),
                  ("Steel", 10, recomended_feeds_speeds("steel", 10)),
                  ("Steel", 16, recomended_feeds_speeds("steel", 16)),
                  ("Plastic", 6, recomended_feeds_speeds("plastic", 6)),
                  ("Plastic", 10, recomended_feeds_speeds("plastic", 10)),
                  ("Plastic", 16, recomended_feeds_speeds("plastic", 16))]

print(f"{'Material':<10} {'Diameter':<10} {'Spindle Speed':<15} {'Cutting Speed':<15}")
print("-" * 50)
for material, diameter, (spindle_speed, cutting_speed) in printable_data:
    print(f"{material:<10} {diameter:<10} {spindle_speed:<15.2f} {cutting_speed:<15.2f}")