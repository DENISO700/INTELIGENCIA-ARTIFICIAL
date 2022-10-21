clc, clear, close all

D=[	0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 1 1 0 0 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 0 0 1 0 1 0 1 0 1 0 1; %A tipo1
	1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0; %B tipo1
	0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 1 1 1 1 0; %C tipo1
	1 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0; %D tipo1
	1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1; %E tipo1
	0 0 0 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0; %J tipo1
	1 0 1 0 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 1; %K tipo1
	0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 0 1 0 1 0 0 0 0 0 0 1 0 0 0 1 0 1; %A tipo2
	1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 1 1 0 1 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0; %B tipo2
	0 0 1 1 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 0 0; %C tipo2
	0 1 1 1 1 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 1 1 1 1 0 0; %D tipo2
	0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1; %E tipo2
	0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 0; %J tipo2
	0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0; %K tipo2
	0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1; %A tipo3
	1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0; %B tipo3
	0 0 1 1 1 0 1 0 1 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 0 1 1 0 0; %C tipo3
	1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 1 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 0; %D tipo3
	1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1; %E tipo3
	0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 1 1 0 0; %J tipo3
	0 1 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 1 1  %K tipo3
]; 

save('pDistorsionados.mat','D');