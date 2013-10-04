 function [minimum,maximum, ind_min,ind_max]=matrix_task1 (A,type)
 	if (type==0) [minimum,maximum, ind_min,ind_max]=matrix_minmax(A)	;
 	else [minimum,maximum, ind_min,ind_max]=for_minmax(A);
 	end;
 end
  
 %Call:
 %[minimum,maximum,ind_min,ind_max]=matrix_task1(fix(100*rand(1,25)),type)
 %where type = 0 or not 0
 
function  [minimum,maximum, ind_min,ind_max]=matrix_minmax(A)
 	[minimum,ind_min] = min(A);
 	[maximum,ind_max]=max(A);
end
function [minimum,maximum, ind_min,ind_max]=for_minmax(A)
	minimum=A(1); ind_min=1;
	maximum=A(1);ind_max=1;
	sizeA=size(A);
	for i=2:(sizeA(2))
		if (A(i)<minimum) 
			minimum=A(i);
			ind_min=i;
		end
		if (A(i)>maximum)
			maximum=A(i);
			ind_max=i;
		end
	end
end
