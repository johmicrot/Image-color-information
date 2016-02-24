clear all
clc
%I = double(imread('tank.jpg'));
img = input('enter the image file name you wish to load\n including the .jpg extension \n','s');
I = double(imread(img));

if size(I,3) == 3
%color image
    
    rChan = (I(:,:,1));
    gChan = (I(:,:,2));
    bChan = (I(:,:,3));
    [length,width,~] = size(I);
    Ic = zeros(length,width);
    sat = zeros(length,width);
    hue = sat;

    figure
    subplot(221)
    hist(((rChan(:))*0.21 + (gChan(:))*0.72+ (bChan(:))*0.07)./3);
    xlabel('average luminosity')
    subplot(222)
    hist(double(rChan(:)))
    xlabel('Red channel luminosity distrubtion');

    subplot(223)
    hist(double(gChan(:)))
    xlabel('Green channel luminosity distrubtion');

    subplot(224)
    hist(double(bChan(:)))
    xlabel('Blue channel luminosity distrubtion');
    h = findobj(gca,'Type','patch');
    set(h,'FaceColor','b','EdgeColor','w')
    
else
%greyscale 
imhist(I)
xlabel('greyscale intensity distribution')
end
