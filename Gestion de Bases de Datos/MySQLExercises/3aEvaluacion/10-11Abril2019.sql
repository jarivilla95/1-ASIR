# CURSORES
#1.Crear un procedimiento llamado "actualizarPrecios"
#  Si el precio del recambio es menor a 10 sumamos 2€
#  Si el precio del recambio esta entre 10 y 20 sumamos 3€
#  Si el precio del recambio e mayor a 20 sumamos 5€
SELECT * FROM recambios;
call actualizarPrecios();

#2.Crear una procedimiento llamado "actualizarKM"
#  que actualize los km a la mitad de los coches 
#  de la marca que indiquemos.

SELECT * FROM vehiculos;
SELECT * FROM reparaciones;
 
CALL actualizarKM('Hyundai');

#3.Funcion que se llame informeciudad(in ciudad), 
#y devuelve el informe nº clientes, nombre, apellidos, direccion 
#y nº vehículos que tienen incluso los que no tengan

SELECT informe_ciudad("Madrid");

#4. Funcion que devuelva si un vehiculo existe o no, y si
# existe que muestre datos del vehiculo


#5. Sacar nombre cliente, apellidos, direccion, Nº de coches, pero si tiene 0 "No tiene coche"
# Facturas pagadas y si no las paga mostrar "No paga"

SELECT informeClienteCocheFactura();
