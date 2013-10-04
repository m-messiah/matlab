function [S,L,Type] = base_task1 (R)
	S=pi*R*R;
	L=2*pi*R;
	if (S>L) Type='Good';
	else Type='Bad';
	end;
end
