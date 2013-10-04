function a=base_task3(a0,N)
	a=a0;
	if (N>0) 
		anew=a0;
		for i = 1:N
			aold=anew;
			if (mod(aold,2)==0) anew=aold/2;
			else anew=aold*3+1;
			end
		a=[a,anew];
		end
	end
end
