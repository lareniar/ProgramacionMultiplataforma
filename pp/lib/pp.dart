// TODO Implement this library.
List<String> r3lista(List<double> L1, num N , num M){
  List<String> L2 = [];
  for (var i = 0; i < L1.length; i++) {
    
    var number = ( (L1[i]/M) * N).toStringAsFixed(2);
      L2.add( number );
  }
  return L2;
}