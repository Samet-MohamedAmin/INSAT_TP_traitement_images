pkg load image

function visualize()
	figure();
	irm1 = histeq(imread('../images/IRM1.jpg'));
	imshow(irm1);
	
	figure();
	irm2 = histeq(imread('../images/IRM2.jpg'));
	imshow(irm2);
	
	figure();
	irmDiff = abs(irm1 - irm2);
	imshow(irmDiff);
