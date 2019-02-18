pkg load image


	%Transform to gray scale
	im = imread('../images/lena_gray.tif'); %'PixelRegion',{[100,200],[100,200]});
	% imageGray = rgb2gray(im);
	imageGray = im; % test case[1, 1, 2, 4; 5 1 3 4; 2 1 1 2; 2 2 2 1];
	imageGrayFlat=imageGray(:);
    scale = max(imageGrayFlat)+1;

	% create arrays
	zeros_array = zeros(scale,1)';
	occ = zeros_array;
	occ_cum = zeros_array;
	prob_cum = zeros_array;

    total = size(imageGray,1) * size(imageGray,2);

    %calculate Occurences 
	for i = imageGray(:)'+1
		occ(i) =  occ(i) + 1;
	end
	
	%calculate Probabilities
	prob = occ/total;


	% calculate Cumulated Occurences
	for i = 1:scale
		occ_cum(i)= sum(occ(1:i));
	end

    % calculate cumulated prob
    for i = 1:scale
		prob_cum(i) =  sum(prob(1:i));
	end

    A = (scale-1)*prob_cum;

    n1 = floor(A);
    n=0:1:255;

	'find the differences'
    % find the differences
	diff = []
    for i=1:scale
        if n1(i)!=i-1
			'----------------'
			i-1
			n1(i)
            diff(:,size(diff,2)+1)=[i-1 n1(i)];
			diff
			%diff(2,size(diff,2))=n1(i);
		end
    end

	'egalisation'
	% egalisation
	for i=1:length(imageGrayFlat)
		for j=1:size(diff,2)
			if imageGrayFlat(i)==diff(1,j)
				% 'change ', imageGrayFlat(i), 'to ', diff(2,j)
				imageGrayFlat(i)=diff(2,j);
				break 
			end
		end
	end

	imageGray = reshape(imageGrayFlat, size(imageGray,1), size(imageGray,2));


%
%    for i=n
%        somme=0;
%        indice=0;
%        for j=N
%            if j==i
%                somme = somme + H(indice);
%            end
%            indice = indice +1;
%        end
%        Heg(i)=somme
%    end
%




