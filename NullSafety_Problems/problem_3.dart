int checkValue(int? number) {
  return number ?? 0;
}

void main() {
  print(checkValue(null)); 
  print(checkValue(5));    
}
