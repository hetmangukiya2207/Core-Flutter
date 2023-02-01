void main()
{
  List <int> a = [1, 2, 3, 4, 5];
  print("Array A :- $a");
  print("Add Elements...");
  a.add(6);
  print("Array A :- $a");
  print("Remove Element...");
  a.remove(1);
  print("Array A :- $a");
  print("Replace Elements...");
  a.replaceRange(2, 3, [11, 22, 33]);
  print("Array A :- $a");
}