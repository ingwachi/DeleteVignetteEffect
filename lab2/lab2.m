im = imread('Lawrence-Bluebells_Vignette.jpg');
figure(1);
imshow(im);

[row,col,~] = size(im);
centerX = col/2;
centerY = row/2;
max_distance = col - col/2;

im_temp = ones(row,col);

for c = 1: col
    for r = 1 : row
        radius = sqrt((r-centerY)^2 + (c-centerX)^2);
        im_temp(r,c) = 1 - (0.7 * radius/max_distance);
    end
end

figure(2);
imshow(im_temp);

im_ans = double(im) ./ im_temp;
im_last = uint8(im_ans);
figure(3);
imshow(im_last);