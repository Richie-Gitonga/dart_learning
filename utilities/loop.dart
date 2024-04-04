List<int> displaySequence(int number) {
 List<int> values = [];
 for(int i = 1; i <= number; i++){
  values.add(i);
 }
 return values;
}

void main() {
 print(displaySequence(10));
}
