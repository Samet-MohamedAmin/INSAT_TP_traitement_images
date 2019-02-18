pkg load image

function plotImagePers()
	image=imread('../images/mandrill.bmp');
	imageTitle='mandrill.bmp';
	%Transform to gray scale
	imageGray = rgb2gray(image);
	occ = zeros(255,1)'
	%calculate Occurences 
	for i = imageGray(:)'
		occ(i) =  occ(i) + 1;
	end
	
	%Create the figure
	plotFig = figure;
	
	% Show the original
	subplot(2, 2, 1);
	imshow(image);
	title('Original');
	
	%Plot the Gray image
	subplot(2, 2, 2);
	imshow(imageGray);
	title('Gray Scaled');
	
	%Plot the First Image
	subplot(2, 2, 3);
	plot(occ);
	title('Personalized');
	%Plot the Second
	subplot(2, 2, 4);
	plot(imhist(imageGray));
	title('System');