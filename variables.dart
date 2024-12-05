late String description;
void main() {
  bool weLikeToCount = true;
  int lineCount;

  if (weLikeToCount) {
    lineCount = countLines();
  }
  print(lineCount);

  description = 'Feid';
  print(description);
}

int countLines() {
  return 100;
}
