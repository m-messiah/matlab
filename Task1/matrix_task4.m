function line = matrix_task4(B,type)
	if (type==0) line=matrix_negatives(B);
	else line=for_negatives(B);
	end
end

function line=matrix_negatives(B)
	sizeB=size(B);
	matr=B<zeros(sizeB);
	line=sum(matr);
end

function line=for_negatives(B)
	sizeB=size(B);
	line=zeros(1,sizeB(2));
	for i=1:(sizeB(2))
		for j=1:(sizeB(1))
			if (B(j,i)<0) 
				line(i)=line(i)+1;
			end
		end
	end
end
