clc, clear, close all

T=[	-1 -1 -1 -1 -1; %A tipo1
	-1 -1 -1 -1  1; %B tipo1
	-1 -1 -1  1 -1; %C tipo1
	-1 -1 -1  1  1; %D tipo1
	-1 -1  1 -1 -1; %E tipo1
	-1 -1  1 -1  1; %J tipo1
	-1 -1  1  1 -1; %K tipo1
	-1 -1  1  1  1; %A tipo2
	-1  1 -1 -1 -1; %B tipo2
	-1  1 -1 -1  1; %C tipo2
	-1  1 -1  1 -1; %D tipo2
	-1  1 -1  1  1; %E tipo2
	-1  1  1 -1 -1; %J tipo2
	-1  1  1 -1  1; %K tipo2
	-1  1  1  1 -1; %A tipo3
	-1  1  1  1  1; %B tipo3
	 1 -1 -1 -1 -1; %C tipo3
	 1 -1 -1 -1  1; %D tipo3
	 1 -1 -1  1 -1; %E tipo3
	 1 -1 -1  1  1; %J tipo3
	 1 -1  1 -1 -1  %K tipo3
];
T=T';
save('vEsperados.mat','T');