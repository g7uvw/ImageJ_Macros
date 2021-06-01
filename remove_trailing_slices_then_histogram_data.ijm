filecount = 36;
fn = 1;
path = "C:/xmt/david/Aligned_Crops/";
suffix = "_a";
prefix = "D_";

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


open(path+prefix+name+".tif");
selectWindow(prefix+name+".tif");
run("Slice Keeper", "first=1 last=23 increment=1");
run("Histogram", "stack");
saveAs("Results", path+prefix+name+".csv");
fn = fn+1;
}

