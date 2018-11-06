load('GraphNet.mat');
camera=webcam;
x1=N1; x2=N2; x3=N3;
while true
    picture=camera.snapshot;
    image(picture)
    picture=imresize(picture,[227,227]);
    label=classify(x1,picture);
    if strcmp(char(label),'Grafo clasificable')
        label2=classify(x2,picture);
        if strcmp(char(label2),'Grafo no dirigido')
            label3=classify(x3,picture);
            image(picture); title(char(label3));
            drawnow
        else
            image(picture); title(char(label2));
            drawnow
        end
    else
        image(picture); title(char(label));
        drawnow
    end
end
