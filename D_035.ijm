run("Raw...", "open=[Y:\\Aligned_Crops\\D_035.tom] image=8-bit width=141 height=131 offset=512 number=31 gap=0 little-endian");
run("Set Scale...", "distance=1 known=0.030000 pixel=1 unit=mm");run("Flip Vertically", "stack")
;run("Calibrate...", "function=[Straight Line] unit=cm-1 text1=[0 75.000000] text2=[0 1] global");
