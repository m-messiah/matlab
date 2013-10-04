function [line summ] = matrix_task6(A,type)
	if (type==0) sizeA=size(A);
		 [line summ]=matrix_positives(A.*triu(ones(sizeA),1));
	else [line summ]=for_positives(A);
	end
end

function [line summ]=matrix_positives(A)
	matr=A>zeros(size(A));
	line=sum(matr);
	summ=sum(A.*matr);
end

function [line summ]=for_positives(A)
	sizeA=size(A);
	line=summ=zeros(1,sizeA(2));
	for i=2:(sizeA(2))
		for j=1:(i-1)
			if (A(j,i)>0) 
				line(i)=line(i)+1;
				summ(i)=summ(i)+A(j,i);
			end
		end
	end
end
