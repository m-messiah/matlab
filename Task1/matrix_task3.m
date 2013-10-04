function [minimum,maximum,min_line,min_column,max_line,max_column]=matrix_task3(A,type)
	if (type==0) [minimum,maximum,min_line,min_column,max_line,max_column]=matrix_minmax(A);
	else [minimum,maximum,min_line,min_column,max_line,max_column]=for_minmax(A);
	end
end

function [minimum,maximum,min_line,min_column,max_line,max_column]=matrix_minmax(A)
	[temp,min_line]=min(A);
	[minimum,min_column]=min(temp);
	min_line=min_line(min_column);
	[temp,max_line]=max(A);
	[maximum,max_column]=max(temp);
	max_line=max_line(max_column);
end

function [minimum,maximum,min_line,min_column,max_line,max_column]=for_minmax(A)
	minimum=maximum=A(1,1);
	min_line=min_column=max_line=max_column=1;
	sizeA=size(A);
	for i=1:(sizeA(1))
		for j=1:(sizeA(2))
			if (A(i,j)<minimum) 
				minimum=A(i,j);
				min_line=i;
				min_column=j;
			end
			if (A(i,j)>maximum)
				maximum=A(i,j);
				max_line=i;
				max_column=j;
			end
		end
	end
end
