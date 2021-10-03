function f = extract_reg(I, x1, x2, y1, y2)
    % extract rough motion region
    [x,y] = size(I);
    R = ones(x, y);
    for i=1:x
        for j=1:y
            if (i>x1)&&(i<x2)&&(j>y1)&&(j<y2)
                R(i,j) = I(i,j);
            else
                R(i,j) = 0;
            end
        end
    end
    f = R;
end
