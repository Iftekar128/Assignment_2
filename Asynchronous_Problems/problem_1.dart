void main() {
  print("First Operation");   
  Future.delayed(Duration(seconds:2),()=>print('Second Big Operation'));
  print("Third Operation"); 
  print("Last Operation"); 
}