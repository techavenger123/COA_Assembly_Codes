MVI A,10H
STA 2000H
MVI A,20H
STA 2001H

LXI H, 2000H    
MOV A,M
INX H        
ADD M   
INX H
MOV M,A
HLT            
   