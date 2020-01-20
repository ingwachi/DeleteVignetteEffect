im = imread('honeypot.jpg');
figure(1);
imshow(im);

h = fspecial('sobel');
i = h';
j = h + i;
b = imfilter(im, j);
figure(2);
imshow(b);

l = fspecial('average', 25);
z = imfilter(im,l);
figure(3);
imshow(z);

x = z - b;
figure(4);
imshow(x);
