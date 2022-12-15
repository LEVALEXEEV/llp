#swap
.text
swap:
.globl swap
 # в a0 – адрес 0-го элемента массива чисел типа unsigned
 # в a1 – длина массива
 li a7 1 # в a7 - счетчик
 bgeu a7, a1, loop_exit # if( a7 >= a1 ) goto loop_exit
loop: # начало цикла
 lw t1, 0(a0) # t1 = t1 = array[i-1]
 lw t0, 4(a0) # t0 = t1 = array[i]
 bgeu t1, t0, reverse_end # if t0 >= t1, пропускаем блок перестановки
 sw t1, 4(a0) # array[i] = t1
 sw t0, 0(a0) # array[i-1] = t0
reverse_end:
 addi a0, a0, 8 # записываем адрес следующего элемента массива
 addi a7, a7, 2 # увеличиваем счетчик на 2
 bltu a7, a1, loop # if( a7 < a1 ) goto loop
loop_exit:
 ret