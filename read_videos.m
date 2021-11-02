v = VideoReader('2021-10-21/DSC_0023.MOV');
%%
v.CurrentTime = 4.8;
img = readFrame(v);

figure
imshow(img)

%%
clc
for i = 1:30
    v.CurrentTime = 4.8 + 0.5*i;
    img = readFrame(v);
    img = rgb2gray(img);
    
    fname = sprintf('IMG_%04d.tif',i);
    imwrite(img,fullfile('/Users/yeonsu/Documents/github/profilometry/Test2',fname))
    
end