n = 0;
for i = -90:step:90
    for j = -180:step:180
        n = n + 1;
        mu = [i j];
    end
end
rng('default')  % For reproducibility
R = mvnrnd(mu,eye(2),260281);
a = R(:,1);
b = R(:,2);
scatter(a,b);
s = size(a);
Z = 1:s(1);
fileID = fopen('point_skewed.sql', 'w');
formatSpec = 'insert into Tourist values(%d,%5.2f,%5.2f,MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(%5.2f,%5.2f,NULL),NULL,NULL));\n'
A = fprintf(fileID,formatSpec,[Z;a';b';a';b']);
fclose(fileID);