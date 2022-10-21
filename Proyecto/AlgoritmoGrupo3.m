function [salidaA, salidaT, matrizE] = AlgoritmoEntrenamiento(neuronas, epoc, alpha)
    % Algoritmo entrenamiento de la red neuronal multicapa
    load ('pEntrenamiento.mat')
    load ('vEsperados.mat')
    Q = size(p,1); % Número de ejemplos
    p=p'; % Transpuesta de la matriz p
    
    %Valores iniciales
    %n1=25;	%Número de neuronas en la capa oculta
    n1=neuronas;
    ep=1;	%Ventana de valores iniciales
    
    %Valores inicales
    W1= ep*(2*rand(n1,63) - 1);
    b1= ep*(2*rand(n1,1) - 1);
    W2= ep*(2*rand(5,n1) - 1);
    b2= ep*(2*rand(5,1) - 1);
    
    % Usar one vs all
    % Índice de aprendizaje
    %alfa=0.01;
    alfa = alpha;
    for Epocas=1:epoc
	    for q = 1:Q
		    % Propagación de la entrada hacia la salida
		    a1= tg_sig(W1*p(:,q) + b1);
		    a2 = tg_sig(W2*a1 + b2);
		    % Retropropagación de la sensibilidades
		    e= T(:,q) - a2;
		    s2 = -2*diag(1-a2.^2)*e;
		    s1 = diag(1-a1.^2)*W2'*s2;
		    % Actualización de pesos sinápticos y polarizaciones
		    W2= W2 - alfa*s2*a1';
		    b2= b2 - alfa*s2;
		    W1= W1 - alfa*s1*p(:,q)';
		    b1= b1 - alfa*s1;
		    %Error Cuadrático
		    ec(q) = e'*e;
	    end
	    % Error cuadrático medio
	    ecm(Epocas)= sum(ec)/Q;
	    if mod(Epocas,50) == 0
		    Epocas
		    plot(ecm)
	    end
    end
    
    % Verificación de la respuesta de la multicapa
    for q=1:Q
	    a1= tg_sig(W1*p(:,q) + b1);
	    a2 = hardlims (W2*a1 + b2);
	    b = size(a2,1);
	    for i= 1:b
		    a(q,i) = a2(i);
	    end
    end
    fprintf('Salidas Obtenidas\n')
    disp(a)
    % MUESTRA LOS ERRORES
    fprintf('Matriz de Errores\n')
    disp(a - T')
    % Almacenar los valores de los pesos sinápticos y polarizaciones donde si se reconocen las letras
    % Reconocer las letras
    z = a- T';
    r = zeros(21,5);
    if(z==r)
        save Datos.mat W1 W2 b1 b2 alfa;
    end
    salidaT = T';
    salidaA = a;
    matrizE = z;
end