void main(List<String> arguments) {
// Dado un número N, mayor que la suma de los números de una lista L1. 
// Calcula una nueva Lista L2 cuya suma sea igual a N, y cada valor en L2 sea proporcional al número en L1. (P.D: Es más fácil recursivamente)
// Ej: Dado N =12, y L1=[1,2,3], la lista a calcular L2 será [2,4,6]

// Extra1:  lo mismo pero N representa un área h=alto x w=ancho. L2 sería una lista de áreas. 
// Extra2: Y si el área tuviese coordenadas x,y. L2 sería una lista de áreas y coordenadas . 

// double a = 1, b = 2;
// var multiply = (double a, double b) {
//   return a*b;
// };
// prdouble(multiply(a, b));
// Future<String> httpGet(String url){
//   return Future.delayed(new Duration( seconds: 4 ), (){
//     return 'hola mund';
//   });
// }

// prdouble('Estamos a punto de pedir datos');
// httpGet('https://api.nasa.com/aliens').then( (data) {
//   prdouble(data);
// });

// prdouble('Ultima linea');



List<String> CalcularSegundaLista( {double N, double M, List<double> L1} ){
  List<String> L2 = [];
  print(N);
  for (var i = 0; i < L1.length; i++) {
    
    String number = ( (L1[i]/M) * N).toStringAsFixed(2);
      L2.add( number );
  }
  return L2;
}

double CalcularSumaTotalDeValoresL1(List<double> L1){
  double suma = 0;
  for (var i = 0; i < L1.length; i++) {
    suma += L1[i];
  }
  print(suma);
  return suma;
}

double N = 18.6;
List<double> L1 = [4, 2.5, 4];

double M = CalcularSumaTotalDeValoresL1(L1);
List<String>L2 = CalcularSegundaLista( N: N, M: M, L1: L1 );

print(L2);


}
