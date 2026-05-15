import matplotlib.pyplot as plt 

import numpy as np 

 

# Enter your ANSYS results here 

modes = [1, 2, 3, 4, 5, 6] 

freqs = [279, 606.85, 918.76, 2556.3, 3362.4, 3606]  # your Hz values 

descriptions = ['First bending along diretion of flat edge', 'twists back and forth perpendicular to flat edge', "along flat edge again, but entire peice is moving", "Tip is twisting","Corner seems to be vibrating","Entire peice is moving extremely"] 

 

fig, ax = plt.subplots(figsize=(9,4)) 

bars = ax.bar(modes, freqs, color='#8B1A1A', width=0.6) 

ax.set_xlabel('Mode Number'); ax.set_ylabel('Natural Frequency (Hz)') 

ax.set_title('L-Bracket Modal Analysis — First 6 Modes (6061 Al)') 

for bar, desc in zip(bars, descriptions): 

    ax.text(bar.get_x()+bar.get_width()/2, bar.get_height()+0.5, 

            desc, ha='center', va='bottom', fontsize=7, rotation=45) 
plt.tight_layout(); plt.savefig('modal_frequencies.png', dpi=150) 