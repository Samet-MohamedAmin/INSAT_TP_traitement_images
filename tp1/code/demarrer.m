pkg load image

function part_1()
    figure();
    I=imread('../images/lena_gray.tif');
    imshow(I)

    figure();
    I3=rand(256).*1000;
    imagesc(I3);
    axis image;
    axis off;
    colormap(gray)
    colorbar;
    end

function part_2()
    f=imread ('../images/fleur.png');
    n = size(f , 1);
    figure();
    f1 = cat( 3 , f( : , : , 1 ) , zeros(n) , zeros(n) ) ;
    f2 = cat( 3 , zeros(n) , f( : , : , 2 ) , zeros(n) ) ;
    f3 = cat( 3 , zeros(n) , zeros(n) , f( : , : , 3 ) ) ;
    subplot( 2 , 2 , 1 ) ; imshow( f ) ; title( ' image f l e u r ' ) ;
    subplot( 2 , 2 , 2 ) ; imshow( f1 ) ; title( ' composante rouge ' ) ;
    subplot( 2 , 2 , 3 ) ; imshow( f2 ) ; title( ' composante v e r t e ' ) ;
    subplot( 2 , 2 , 4 ) ; imshow( f3 ) ; title( ' composante bleue ' ) ;

    i=245;
    j=50;

    'les valeurs des trois composants: '
    'composante rouge'
        f1(i, j)
    'composante vert'
        f2(i, j)
    'composante bleue'
        f3(i, j)


    end