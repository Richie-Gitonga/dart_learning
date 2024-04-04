void main() {
 try {
  var result = 12 ~/ 0;
  print(result);
 } catch(e) {
  print('Error: $e');
 }
}
