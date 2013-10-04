A=fix(rand(1,25)*100)
tic
[minimum,maximum, ind_min,ind_max]=matrix_task1 (A,0);
time=toc;
tic
[minimum,maximum, ind_min,ind_max]=matrix_task1 (A,1);
time=toc-time;
fprintf('Task 1\nMatrix faster than For=%f\n\n',time);

tic
[minimum,maximum, ind_min,ind_max]=matrix_task2 (A,0);
time=toc;
tic
[minimum,maximum, ind_min,ind_max]=matrix_task2 (A,1);
time=toc-time;
fprintf('Task 2\nMatrix faster than For=%f\n\n',time);


A=fix(100*rand(6,5))
tic
[minimum,maximum,min_line,min_column,max_line,max_column]=matrix_task3(A,0);
time=toc;
tic
[minimum,maximum,min_line,min_column,max_line,max_column]=matrix_task3(A,1);
time=toc-time;
fprintf('Task 3\nMatrix faster than For=%f\n\n',time);


B=fix(200*rand(6,5)-100)
tic
line = matrix_task4(B,0);
time=toc;
tic
line = matrix_task4(B,1);
time=toc-time;
fprintf('Task 4\nMatrix faster than For=%f\n\n',time);


B=fix(200*rand(10,15)-100)
tic
[line summ] = matrix_task5(B,0);
time=toc;
tic
[line summ] = matrix_task5(B,1);
time=toc-time;
fprintf('Task 5\nMatrix faster than For=%f\n\n',time);


A=fix(200*rand(8,8)-100)
tic
[line summ] = matrix_task6(A,0);
time=toc;
tic
[line summ] = matrix_task6(A,1);
time=toc-time;
fprintf('Task 6\nMatrix faster than For=%f\n\n',time);
