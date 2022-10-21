function [ent, sal] = RealizaPruebaDistorsion(letra)
    load ('pDistorsionados.mat');
    load ('pEntrenamiento.mat');
    load ('vEsperados.mat');
    load('Datos.mat');
    Q = size(D,1); % Número de ejemplos
    D=D';
    x=1;  
    let = letra;
    Dt = D';

    for filas = 0:8
        for columnas = 1:7
            % Para la demostración de las posiciones en las que está distorsionada la
            % letra, se utiliza el @ = 1 y o = 0
            if (Dt(let,(7*filas)+columnas) == 1)                            % El elemento es 1? // El elemento es #?
                if(Dt(let,(7*filas)+columnas) == p(let,(7*filas)+columnas)) % Sí. Es igual a el mismo elemento, pero en la letra no distorsionada?
                    entrada((filas+1), columnas)= '#';                      % Sí. Elemento no distorsionado, se muestra # 
                else
                    entrada((filas+1), columnas)= '@';                      % No. Elemento distorsionado, se muestra @
                end
            end
            if (Dt(let,(7*filas)+columnas) == 0)                            % El elemento es 0? // El elemento es .?
                if(Dt(let,(7*filas)+columnas) == p(let,(7*filas)+columnas)) % Sí. Es igual a el mismo elemento, pero en la letra no distorsionada?
                    entrada((filas+1), columnas)= '.';                         % Sí. Elemento no distorsionado, se muestra . 
                else
                    entrada((filas+1), columnas)= 'o';                      % No. Elemento distorsionado, se muestra o
                end
            end
        end
    end
    ent = entrada;

    %Verificación de la respuesta de la multicapa para una letra especifica
    a1 = tg_sig(W1*D(:,let) + b1);
    a2 = hardlims (W2*a1 + b2);
    b = size(a2,1);
    for i = 1:b
        a(let,i) = a2(i);
    end
    
    
    Tt= T';
    if (a(let,1:5)==Tt(let,1:5))
        for filas = 0:8
            for columnas = 1:7
	            if (p(let,(7*filas)+columnas) == 1)
		            salida((filas+1), columnas) = '#';
	            end
	            if (p(let,(7*filas)+columnas) == 0)
		            salida((filas+1), columnas) = '.';
	            end
            end
        end

    else



        for i = 1:Q
            if(Tt(i,1:5)==a(let,1:5))
                x=i;
            end
        end
        for filas = 0:8
            for columnas = 1:7
                if (p(x,(7*filas)+columnas) == 1)
	                salida((filas+1), columnas)= '#';
                end
                if (p(x,(7*filas)+columnas) == 0)
	                salida((filas+1), columnas)= '.';
                end
            end
        end

    end
    sal = salida;  
   
end