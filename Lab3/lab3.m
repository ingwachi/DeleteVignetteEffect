im = imread('mri_txt.tif');

J = imadjust(im,stretchlim(im),[]);

figure(2);
imshow(J);

im2 = imread('monet_gray_xlc.jpg');

M = imadjust(im2,stretchlim(im2),[]);

K = histeq(M);

L = adapthisteq(K,'ClipLimit',0.25);
figure(5);
imshow(L);



