import 'package:test/test.dart';
import 'package:pp/pp.dart';
void main() {

 test('validar regla 3', (){
  expect(r3lista([1, 2, 3], 6, 8), ([1, 4, 5]));
});

}