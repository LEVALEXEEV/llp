# 1 "D:\\Документы\\lab4\\reverse.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:\\Документы\\lab4\\reverse.c"
# 1 "D:\\Документы\\lab4\\reverse.h" 1


void reverse(int *array, int n);
# 2 "D:\\Документы\\lab4\\reverse.c" 2
void reverse(int *array, int n) {
 int t = 0;
 int i;
 for (i = 0; i < n-1; i += 2) {
  if (array[i] < array[i+1]){
   t = array[i];
   array[i] = array[i+1];
   array[i+1] = t;
  }
 }
}
