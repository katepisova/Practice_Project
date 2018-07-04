function middle_point
a = -3.2; 
b = 0.9;
eps = 10e-3; 
answ = 0;
while b - a > eps 
    middle = (a + b) / 2; 
    D = df(middle); 
    if D > 0 
        b = middle;
    elseif D < 0 
        a = middle
    else
        answ = middle;
    end
end
f_x_min = f(middle);
disp(middle);
disp(f_x_min);
end

function f = f(x) 
    f = (x + 1)*(x + 1)*(x + 1)*(x + 1) - 2 * x * x;
end

function df = df(x) 
    df = 4 * (x + 1)*(x + 1)*(x + 1) - 4 * x;
end