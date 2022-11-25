#include "reverse.h"
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

