function [minimum,maximum, ind_min,ind_max]=matrix_task2 (A,type)
 	if (type==0) [minimum,maximum, ind_min,ind_max]=matrix_minmax(A)	;
 	else [minimum,maximum, ind_min,ind_max]=for_minmax(A);
 	end;
end
   
 function  [minimum,maximum, ind_min,ind_max]=matrix_minmax(A)
 	minimum = min(A);
 	ind_min=find (A==minimum);
 	maximum=max(A);
	ind_max=find(A==maximum);
end

function [minimum,maximum, ind_min,ind_max]=for_minmax(A)
	minimum=A(1); ind_min=[];
	maximum=A(1);ind_max=[];
	sizeA=size(A);
	for i=2:(sizeA(2))
		if (A(i)<minimum) 
			minimum=A(i);
		end
		if (A(i)>maximum)
			maximum=A(i);
		end
	end
	for i=1:(sizeA(2))
		if (A(i)==minimum) 
			sizeind=size(ind_min);
			ind_min(sizeind(2)+1)=i; end
		if (A(i)==maximum) 
			sizeind=size(ind_max);
			ind_max(sizeind(2)+1)=i; end
	end
end
