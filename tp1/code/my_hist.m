pkg load image

I = imread('../images/rock_uneq.ppm');

my_hist = zeros(256, 1);


for i = I(:)'+1
	my_hist(i) =  my_hist(i) + 1;
end

actual_hist = imhist(I(:));

figure();
subplot(1,2,1);
x=[1:1:256];
plot(x,my_hist);
subplot(1,2,2);
plot(x, actual_hist)
