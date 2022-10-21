  function [ent, sal] = RealizaPruebaEntrenamiento(letra) 
    load ('pEntrenamiento.mat');
    load ('vEsperados.mat');
    load('Datos.mat');
    
    %Letra  de entrenamiento
    let = letra;
    %Ciclo para reconocer la entrada
    for filas = 0:8
	    for columnas = 1:7
		    if (p(let, (7*filas)+columnas) == 1)
			    entrada((filas+1), columnas) = '#';
		    end
		    if (p (let, (7*filas)+columnas) == 0)
			    entrada((filas+1), columnas) = '.';
		    end
	    end
    end
    disp('=============ENTRADA=================')
    fprintf("Letra  %d\n",let);
    ent = entrada;
    disp(entrada);
    p=p';
    
    % Verificacion de la respuesta de la multicapa para una letra especifica
    
	    a1 = tg_sig(W1*p(:,let) + b1);
	    a2 = hardlims(W2*a1 + b2);
	    b = size(a2,1);
	    for i = 1:b
		    a(let, i) = a2(i);
        end
    
    
    Tt= T';
    Pt= p';
    fprintf('\n==========Verificacion==============\n')
    % Validación de la entrada y la capa de la salida
    if (a(let,1:5)==Tt(let,1:5))
        fprintf("\nValores Obtenidos \n");
	    disp(a(let,1:5));
        fprintf('====================================\n')
	    for filas = 0:8
		    for columnas = 1:7
			    if (Pt(let, (7*filas)+columnas) == 1)
				    salida((filas+1), columnas) = '#';
			    end
			    if (Pt(let, (7*filas)+columnas) == 0)
				    salida((filas+1), columnas) = '.';
			    end
		    end
        end
        fprintf('\n=============SALIDA=================\n')
        disp("Letra de Salida")
	    disp(salida);
    else
        disp("Valores Obtenidos")
	    disp(a(let,1:5));
        fprintf('====================================\n')
    end
    sal = salida;
  end