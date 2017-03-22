%%%% airy
close all
clear all

x = -10:0.05:10;
y = -10:0.05:10;

lambda = 5;

k = 2*pi/lambda;

gr = meshgrid(x,y);

for ii =1:length(x)
    for jj =1:length(y)
        
        Bi(ii,jj) = airy(2,k*(-sqrt(gr(1,jj).^2+gr(2,ii).^2)));
    end
end

inten = 1.76*Bi.^2;
imagesc(x,y,inten)
colormap gray
imwrite(inten,'airy.bmp')
%plot(x,inten)


