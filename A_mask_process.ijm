filecount = 36;
fn = 1;
path = "C:/xmt/david/Aligned_Crops/";
suffix = "_a";
prefix = "A_";

while (fn < filecount)
{
	if (fn < 10)
	{
		name = "00" + fn;
	}
	else 
	{
		name = "0" + fn;
	}
	print (name);

run("Raw...", "open="+path+prefix+name+".tom image=8-bit width=111 height=141 offset=512 number=31");
//open(path+prefix+name+suffix +".tif");
//open("/Volumes/MILLS_DATA/HA_DISK/001_a.tif");
selectWindow(prefix+name+".tom");
saveAs("Tiff",path+prefix+name +".tif");
run("Smooth", "stack");
setAutoThreshold("Default dark stack");
setThreshold(0, 121);
setOption("BlackBackground", true);
run("Convert to Mask", "method=Default background=Dark black");

selectWindow(prefix+name+".tif");
saveAs("Tiff", path + prefix+name +"_mask.tif");
open(path+prefix+name+".tif");
selectWindow(prefix+name+".tif");
run("8-bit");
imageCalculator("AND create 32-bit stack", prefix+name+".tif",prefix+name +"_mask.tif");
selectWindow("Result of "+prefix+name+".tif");
saveAs("Tiff", path + prefix+name +"_masked.tif");
close();
fn = fn+1;
}