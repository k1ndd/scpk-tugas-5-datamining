data = [
    1 2 1 3;
    2 1 2 1;
    1 2 2 2;
    1 1 1 1;
    1 1 1 1;
    2 1 2 1;
    3 1 2 2;
    1 1 2 2;
    1 1 1 1;
    3 2 2 2;
    2 1 1 2;
    1 1 1 3;
    2 1 1 1;
    1 1 1 1;
    1 1 2 1;
    2 2 2 2;
    2 2 1 1;
    2 2 1 3;
    3 1 1 1;
    3 1 2 2;
    ];
label = [0;1;0;1;1;1;0;1;1;0;0;1;1;1;1;0;1;0;1;0;];
sampel = [1 1 2 2;
          2 1 2 3;
          3 1 1 1;
          1 1 1 1;
          3 2 2 2;
    ];
x = 0;
k = 3;
a = fitcknn(data,label,'NumNeighbors',k);
while x<=4;
    x = x+1;
    hasil = predict(a,sampel(x,:));
    if x == 1
        nm = "Pelem Golek";
        else if x == 2
            nm = "Spesial Sambal";
            else if x == 3
                nm = "Preksu";
                else if x == 4
                    nm = "Bale Bebakaran";
                    else
                        nm = "Bale Bebek";
        end
        end
        end
        end
if hasil == 1
    hasil = "Direkomendasikan";
else 
    hasil = "Tidak Direkomendasikan";
end
fprintf('Restoran %s adalah restoran yang %s \n',nm,hasil)
        end

