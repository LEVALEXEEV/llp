#include <stdio.h>
#include "reverse.h"

int main(void) {
	int array[11] = {0,1,2,3,4,5,6,7,8,9,10};
	reverse(array, 11);
	int i;
	for(i = 0; i < 11; i++){
		printf("%d", array[i]);
	}
	return 0;
}

