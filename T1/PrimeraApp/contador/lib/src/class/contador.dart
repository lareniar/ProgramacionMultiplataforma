import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Contador  {
  int numero;
  
  Contador(int numero){
    this.numero = numero;
  }

 int get get_numero(){
   return numero;
 }

 void set setNumero(int numero){
   this.numero = numero;
 }


}