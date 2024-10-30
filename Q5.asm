;Write an assembly language program to generate time delay using following three different 
;approaches. No need to generate specific delay. You can load the value of your choice. 
;a. Using a simple Register 
;b. Using Register Pair 
;c. Using loop within a loop
; a. Using a Simple Register
DELAY_REGISTER:
    MVI B, 05H        
DELAY1:
    DCR B              
    JNZ DELAY1         
    HLT               

; b. Using R`egister Pair
DELAY_REGISTER_PAIR:
    LXI D, 0FFFFH        
DELAY2:
    DCX D               
    MOV A, D            
    ORA E               
    JNZ DELAY2          
    HLT                
; c. Using Loop within a Loop
DELAY_NESTED_LOOP:
    MVI C, 0FFH        
OUTER_LOOP:
    MVI B, 0FFH         
INNER_LOOP:
    DCR B               
    JNZ INNER_LOOP      
    DCR C               
    JNZ OUTER_LOOP      
    HLT           

