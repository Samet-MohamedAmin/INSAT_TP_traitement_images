pkg load image

function augment_contrast(I, n)
    return(I+n*(I-mean(I(:)))); 
    

function visualize()
	figure('name', 'IRM');
	irm1 = histeq(imread('../images/IRM1.jpg'));
    subplot(2,2,1);
	imshow(irm1);
    title('before 3 months');
	
	subplot(2,2,2);
	irm2 = histeq(imread('../images/IRM2.jpg'));
	imshow(irm2);
    title('NOW');
	
	subplot(2,2,3);
	irmDiff = abs(irm1 - irm2);
	imshow(irmDiff);
    title('diff');

    subplot(2,2,4);
    irmDiff=double(irmDiff);
    newIrmDiff = augment_contrast(irmDiff, 0.8)
    %irmDiff+0.7*(irmDiff-mean(irmDiff(:))); 
    imshow(newIrmDiff);
    title('diff with contrast');

