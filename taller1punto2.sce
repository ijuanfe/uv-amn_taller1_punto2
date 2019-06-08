////////// ----- Ejercicios de Scilab: Funciones ----- //////////

//// 1. Derive el siguiente polinomio f(x) = 4x^3 + 5x^2 + x + 96

// Funcion que define y evalua un valor x en un
// polinomio y retorna la evaluacion de dicho valor:
function y = derivar_polinomio(x)
    y = 4*x^3 + 5*x^2 + x + 96;
endfunction

// Mostrar resultado:
disp(numderivative(derivar_polinomio,1),"Polinomio derivado y evaluado con f(1):");


//// 2. Resuelva la siguiente ecuación diferencial: dy/dx = 3x − y^2 con y(0) = −1 encuentre y(0,4)

// Primera forma de solucionar el problema:
function dx = ecuacion_diferencial_1(x,y)
    dx = 3*x - y^2
endfunction

// Condiciones iniciales:
x0 = 0;    // valor de x evaluado en y(x)
y0 = -1;   // resultado de evaluar f(0)
x04 = 0.4; // valor a encontrar

// Mostrar resultado:
disp(ode(y0,x0,x04,ecuacion_diferencial_1),"Ecuacion diferencial forma 1:");

// Segunda forma solucionar el problema:
deff("dy=ecuacion_diferencial_2(x,y)","dy=3*x-y^2");
x0 = 0;    // valor de x evaluado en y(x)
y0 = -1;   // resultado de evaluar f(0)
x04 = 0.4; // valor a encontrar

// Mostrar resultado:
disp(ode(y0,x0,x04,ecuacion_diferencial_2),"Ecuacion diferencial forma 2:");


//// 3. Grafique y = sen(x) + cos(x)
x=[-2*%pi:0.1:2*%pi] // valores del eje x: desde -2pi hasta 2pi, con incrementos de 0.1

// Funcion a graficar:
function resultado = suma_sen_cos(x)
    resultado = sin(x) + cos(x);
endfunction

// mostrar grafico:
plot(x,suma_sen_cos(x),'color','black','linestyle',':','marker','>') 
xlabel('X');
ylabel('Y');
legend("Gráfico: y = sen(x) + cos(x)",-1)
set(gca(),'grid',[1 1]);
