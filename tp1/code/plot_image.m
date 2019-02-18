

function plotImage()
	f = double(imread('../images/lena_gray.tif'));
	f2 =f+0.5*(f-mean(f(:))); 

	figure(); 
	subplot(2, 2, 1);
	imshow(uint8(f));
	title('original uint');

	subplot(2, 2, 2);
	imshow(uint8(f2));
	title('Constrasted uint8');

	subplot(2, 2, 3);
	imshow(f2,[]);
	title('contrasted double');
