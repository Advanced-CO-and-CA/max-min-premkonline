/******************************************************************************
* file:   cs18m512_assignment2.s
* author: Premkumar Sholapur
* Guide:  Prof. Madhumutyam IITM, PACE
******************************************************************************/

/*
  This is assignment 2 - Finding max and min element in the list
  */

  @ BSS section
      .bss

  @ DATA SECTION
      .data
data_items: .word 10, 4, 28, 100, 8, 0 /*0 is used to terminate the data*/

  @ TEXT section
      .text

.globl _main


_main:
        LDR R0, =data_items
        MOV R2, #0xFF      @ R2 holds MIN element
        MOV R3, #0         @ R3 holds MAX element
        MOV R4, #0         @ Keeps count of elements

LOOP:   LDR R1, [R0], #4
        CMP R1, #0
        BLE DONE
        
        CMP R1, R2
        MOVLT R2, R1
        
        CMP R1, R3
        MOVGT R3, R1
        
        ADD R4, R4, #1
        
        BL LOOP
        
DONE:   NOP
  
  
  
  
