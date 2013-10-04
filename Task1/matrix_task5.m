function [line summ] = matrix_task5(B,type)
	if (type==0) [line summ]=matrix_positives(B);
	else [line summ]=for_positives(B);
	end
end

function [line summ]=matrix_positives(B)
	sizeB=size(B);
	matr=B>zeros(sizeB);
	line=sum(matr);
	summ=sum(B.*matr);
end

function [line summ]=for_positives(B)
	sizeB=size(B);
	line=summ=zeros(1,sizeB(2));
	for i=1:(sizeB(2))
		for j=1:(sizeB(1))
			if (B(j,i)>0) 
				line(i)=line(i)+1;
				summ(i)=summ(i)+B(j,i);
			end
		end
	end
end
