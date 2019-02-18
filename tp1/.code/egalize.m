pkg load image

function egalize(scale)
	%Transform to gray scale
	imageGray = rgb2gray(image);

	% create arrays
	zeros_array = zeors(scale,1)';
	occ = zeros_array;
	probs = zeros_array;
	cumulatedOcc = zeros_array;
	cumulatedProbs = zeros_array;
	
	total = size(imageGray,1) * size(imageGray,2)
	
	%calculate Occurences 
	for i = imageGray(:)'
		occ(i) =  occ(i) + 1;
	end
	
	%calculate Probabilities
	for i = 1:scale
		probs(i) =  occ(i) / total;
	end
	
	%calculate Cumulated Occurences
	for i = 1:scale
		cumulatedOcc(i) =  sum(occ[1:i])
	end
	
	%calculate Cumulated Occurences
	for i = 1:scale
		cumulatedProbs(i) =  sum(probs[1:i])
	end	
	
	
	