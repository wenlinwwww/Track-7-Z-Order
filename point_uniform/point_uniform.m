%change this variable so that it can change volumn
change = 2;
n = 0;
points = ones((90/change)*(180/change),2);
for i = -90:change:90
    for j = -180:change:180
        n = n + 1;
        points(n,:) = [i, j];
    end
end
a = points(:,1);
b = points(:,2);
scatter(a,b);
s = size(a);
Z = 1:s(1);
fileID = fopen('point_uniform.sql', 'w');
formatSpec = 'insert into Tourist values(%d,%5.2f,%5.2f,MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(%5.2f,%5.2f,NULL),NULL,NULL));\n'
A = fprintf(fileID,formatSpec,[Z;a';b';a';b']);
fclose(fileID);