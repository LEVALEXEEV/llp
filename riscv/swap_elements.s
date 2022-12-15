.text
__start:
.globl __start
 la a3, array_length 
 lw a3, 0(a3) #} a3 = <длина массива>
 la a4, array # a4 = <адрес 0-го элемента массива>
 li a2, 1 # a2 = 1
 bgeu a2, a3, loop_exit # if( a2 >= a3 ) goto loop_exit
loop: # начало цикла
 lw t1, 0(a4) # t1 = array[i-1]
 lw t0, 4(a4) # t0 = array[i]
 bgeu t1, t0, reverse_end # if t0 >= t1, пропускаем блок перестановки
 sw t1, 4(a4) # array[i] = t1
 sw t0, 0(a4) # array[i-1] = t0
reverse_end:
 addi a4, a4, 8 # записываем адрес следующего элемента массива
 addi a2, a2, 2 # увеличиваем счетчик на 2
 bltu a2, a3, loop # if( a2 < a3 ) goto loop
loop_exit:
finish:
 li a0, 10 # x10 = 10
 ecall # ecall при значении x10 = 10 => останов симулятора
.rodata
array_length:
 .word 11
 .data
array:
 .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10