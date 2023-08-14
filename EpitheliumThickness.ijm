title = getTitle();


run("Duplicate...", " ");
run("Invert");
rename("Distance");
run("Distance Map");

run("Duplicate...", " ");
rename("Skeleton");
run("Gaussian Blur...", "sigma=5");
run("Convert to Mask");
run("Skeletonize");
//run("Analyze Skeleton (2D/3D)", "prune=[shortest branch] prune_0 calculate display");

//selectWindow("Longest shortest paths");
//run("Convert to Mask");
run("Create Selection");
roiManager("Add");

selectWindow("Distance");
run("TurboBlackBG");

run("Duplicate...", " ");
rename("Skeleton of distance");
roiManager("Select", 0);
setBackgroundColor(0, 0, 0);
run("Clear Outside");
run("Histogram");
//saveAs("Results", "D:/Denmark/Data/Zhenzhen/Histogram.csv");
