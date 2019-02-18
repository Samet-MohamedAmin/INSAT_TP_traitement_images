pkg load image

% m=randi([1,4], 4,4)
function test(m)
    occ=zeros(max(m(:)),1)'
    o=occ
    for i=m(:)'
        i
        occ(i)=occ(i)+1
        occ(i)
    end
    occ
    o
    for i = 1:size(m,1)
		for j = 1:size(m,1)
			o(m(i,j)) =  o(m(i,j)) + 1;
		end
	end
    o