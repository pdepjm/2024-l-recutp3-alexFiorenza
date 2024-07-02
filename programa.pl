% Aquí va el código.
trabajaEn(maria,empleado,ventas).
trabajaEn(juan,cadete,ventas).
trabajaEn(roque,pasante,ventas).
trabajaEn(nora,empleado,compras).
trabajaEn(pedro,cadete,compras).
trabajaEn(felipe,empleado,administracion).
trabajaEn(hugo,empleado,administracion).
trabajaEn(ana,cadete,administracion).

% 1) a) trabajaEn(Persona,_,compras). 
%       Persona = nora ; 
%       Persona = pedro.
%    b)   trabajaEn(Persona,_,ventas).
%       Persona = maria ;
%       Persona = juan ;
%       Persona = roque.

trabajanEnElMismoDepartamento(Persona1,Persona2):-
    trabajaEn(Persona1,_,Departamento),
    trabajaEn(Persona2,_,Departamento),
    Persona1 \= Persona2.

% 2)    trabajanEnElMismoDepartamento(hugo,maria).
%       false.
%       trabajanEnElMismoDepartamento(juan,roque).
%       true.


lePuedeDarOrdenes(A,B):-
    trabajanEnElMismoDepartamento(A,B),
    trabajaEn(A,empleado,_),
    trabajaEn(B,cadete,_).

lePuedeDarOrdenes(A,B):-
    trabajanEnElMismoDepartamento(A,B),
    trabajaEn(A,empleado,_),
    trabajaEn(B,pasante,_).

% 3)    lePuedeDarOrdenes(hugo,ana).
%       false.
%       lePuedeDarOrdenes(maria,juan).
%       true.
