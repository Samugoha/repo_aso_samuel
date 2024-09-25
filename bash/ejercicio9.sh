#!/bin/bash
while true:
  print("\n1. sumar\n.2 restar\n3. multiplicar\n4 dividir")
  if opcion =='5':
    break

 num1 = float(input("primer número: "))
 num2 = float(input("segundo número: "))

 if opcion == '1':
   print(f"Resultado : {num1 + num2}")
 elif opcion =='2':
   print (f"resultado: {num1 - num2}")
 elif opcion =='3':
   print (f"resultado: {num1 * num2}")
 elif opcion =='4':
   print (f"resultado: {num1 / num2}")

