function middle_point
arr = [];
a = -3.2; 
b = 0.9;
eps = 10e-3; 
answ = 0;
middle = (a + b) / 2;
arr = [arr middle];
while b - a > eps 
    middle = (a + b) / 2; 
    D = df(middle);
    if D > 0 
        b = middle;
    elseif D < 0 
        a = middle;
    else
        answ = middle;
    end
    
    arr =[arr middle];
end
f_x_min = f(middle);
disp(middle);
disp(f_x_min);
x = -3.2 : 0.01 : 0.9;
f_x = f(x);
plot(x,f_x,'b'); 
hold on;
f_x_arr = f(arr);
plot(arr,f_x_arr,'ro'); 

end

function f = f(x) 
    f = (x + 1).*(x + 1).*(x + 1).*(x + 1) - 2 .* x .* x;
end

function df = df(x) 
    df = 4 .* (x + 1).*(x + 1).*(x + 1) - 4 .* x;
end
