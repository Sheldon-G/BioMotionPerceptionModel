clc;clear all;close all; 
addpath(genpath(pwd));

% reset the paths
repath = './biocode/opticlobecompte/regionextract/';
if ~exist(repath,'dir')
    mkdir(repath);
else
    rmdir(repath, 's');
    mkdir(repath);
end

sppath = './biocode/centralbraincompute/superpixels/';
if ~exist(sppath,'dir')
    mkdir(sppath);
else
    rmdir(sppath, 's');
    mkdir(sppath);
end

salpath = './biocode/centralbraincompute/saliencymap/';
if ~exist(salpath,'dir')
    mkdir(salpath);
else
    rmdir(salpath, 's');
    mkdir(salpath);
end

% input frames
fn = imread('hike_00029.jpg'); 
f1 = im2double(rgb2gray(fn)); 
f2 = im2double(rgb2gray(imread('hike_00028.jpg'))); 
f3 = im2double(rgb2gray(imread('hike_00027.jpg'))); 

% bio-inspired motion perception model
olcompution;
cbcompution;

% save and show the results
    figure;imshow(fn);
for i = 1:size(rects, 1)
    rectangle('position', rects(i, :), 'EdgeColor', 'r', 'LineWidth', 1);
end
    figure;imshow(output);
    resultsave=['./output/results/' 'result.jpg']; 
    imwrite(output, resultsave); 
    