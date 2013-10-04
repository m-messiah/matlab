function [val,krat] = base_task2 (n)
	if (n<2) val =n; krat=1; return; end;
	P=factor(n);
	val=unique(P);
	for i=1:numel(val)
        krat(i)=numel(find(P==val(i)));
    end
end
