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
	run("Raw...", "open="+path+prefix+name+".raw image=[32-bit Real] width=111 height=141 number=31");
	saveAs("Tiff", path+prefix+name+".tif");
}