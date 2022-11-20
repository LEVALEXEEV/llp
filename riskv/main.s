#main
.text
__start:
.globl __start
 la a0, array # } a0 = <адрес 0-го элемента массива>
 lw a1, array_length # a1 = <длина массива>
 addi sp, sp, -16 # выделение памяти в стеке
 sw ra, 12(sp) # сохранение ra
 call swap # вызов подпрограммы
 lw ra, 12(sp) # восстановление ra
 addi sp, sp, 16 # освобождение памяти в стеке
 li a0, 0 # a0 = 0
 ret # return 0;
.rodata
array_length:
.word 11
.data
array:
.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10