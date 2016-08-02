; multi-segment executable file template.

data segment
    
    inputX db "input X: $"
    inputY db " input Y: $"
    
    mazes  db "---------------------------------------------|", 10, 13
           db "   |*             |*       |     |     |     |", 10, 13
           db "|  |------------  |---  |  |  |  |  |  |  |  |", 10, 13
           db "|  |*      *|           |  | *|     |     | *|", 10, 13
           db "|  |--|  ---|  |  |-----|  |------  |-----|  |", 10, 13  
           db "|     |        |  |     |  |        |        |", 10, 13
           db "|---* |  |-----|  |  |  |  |  ------|  ------|", 10, 13
           db "|        |        |  |* |  |        |*    |  |", 10, 13
           db "|  ------|  ------|  |--| *|  |---  |--- *|  |", 10, 13
           db "|       *|       *|           |*    |        >", 10, 13
           db "|--------------------------------------------$",  
           
           db "----------------------------------------------", 10, 13
           db "          |*               |*    | *|        |", 10, 13
           db "|  ---------------|  |-----|  |--|  |  |  |* |", 10, 13
           db "|                    |        |     |* |  |  |", 10, 13
           db "|--| *----------* |  | *-------  |--|  |  | *|", 10, 13  
           db "|* |     |*       |  |              |  *  |  |", 10, 13
           db "|  |---  |  |---  |  |  |--------|  |  |--|* |", 10, 13
           db "|       *|  |    *|     |        |    *|* |  |", 10, 13
           db "|  ---|  |--|  |--------|  | *-------  |  | *|", 10, 13
           db "|    *|        |*          |           |     >", 10, 13
           db "---------------------------------------------$",
           
           db "---------------------------------------------|", 10, 13
           db "   |*       |        | *|        |*          |", 10, 13
           db "|* |  |---* |  |--|  |  |  |---  |  |-----| *|", 10, 13
           db "|    *|*       | *|  |     |*    | *|     |  |", 10, 13
           db "|-----|  |  ---|  |  |* |--|  -------* |* |* |", 10, 13
           db "|*      *|*    |  |     |*             |     |", 10, 13
           db "|--------|  |* |  |  |--------------- *| *---|", 10, 13
           db "|* |        |  |     |*                |    *|", 10, 13
           db "|  | *|  |--| *|-----|  -------------------  |", 10, 13
           db "|     |  |*    |*    |*         *|           |", 10, 13
           db "|-----|  |  -------  |  |--------|* |-----|* |", 10, 13
           db "|*       |  |*       | *|*          |    *|  |", 10, 13
           db "|  |-----|  |  |-----|  |  ---------|  |  |--|", 10, 13
           db "|  |*    |     |    *|* |*      *|    *|     |", 10, 13
           db "|------ *|-----|  |  |  |------  |* |------ *|", 10, 13
           db "|*               *|    *|*          |*        ", 10, 13
           db "|--------------------------------------------|$"
           
    victory db "                             _..._             .-'''-.                             ___  ", 10, 13
            db "                          .-'_..._''.         '   _    \                        .'/   \ ", 10, 13
            db " .----.     .----..--.  .' .'      '.\      /   /` '.   \                      / /     \", 10, 13
            db "  \    \   /    / |__| / .'                .   |     \  '       .-.          .-| |     |", 10, 13
            db "   '   '. /'   /  .--.. '               .| |   '      |  '.-,.--.\ \        / /| |     |", 10, 13
            db "   |    |'    /   |  || |             .' |_\    \     / / |  .-. |\ \      / / |/`.   .'", 10, 13
            db "   |    ||    |   |  || |           .'     |`.   ` ..' /  | |  | | \ \    / /   `.|   | ", 10, 13
            db "   '.   `'   .'   |  |. '          '--.  .-'   '-...-'`   | |  | |  \ \  / /     ||___| ", 10, 13
            db "    \        /    |  | \ '.          .|  |                | |  '-    \ `  /      |/___/ ", 10, 13
            db "     \      /     |__|  '. `._____.-'/|  |                | |         \  /       .'.--. ", 10, 13
            db "      '----'              `-.______ / |  '.'              | |         / /       | |    |", 10, 13
            db "                                   `  |   /               |_|     |`-' /        \_\    /", 10, 13
            db "                                      `'-'                         '..'          `''--' $"
    
    x db 0h
    y db 0h
    xCheck db 0h
    yCheck db 0h  
    posInfo db 0h
    posInput db 0h
    
    mazesIndex dw 0h
    mazeCount dw 0h
    $Count dw 0h
    
    character db 01h
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    mov  si, mazesIndex                     
    lea  dx, mazes[0]
    mov  ah, 9
    int  21h
    mov  si, 0
    
    call newMazePos
    call output
    
    posChange:  
    
    call invisInput
    cmp  posInput, '1'
    je   posChangeSW
    cmp  posInput, '2'
    je   posChangeS
    cmp  posInput, '3'
    je   posChangeSE
    cmp  posInput, '4'
    je   posChangeW
    cmp  posInput, '6'
    je   posChangeE
    cmp  posInput, '7'
    je   posChangeNW
    cmp  posInput, '8'
    je   posChangeN
    cmp  posInput, '9'
    je   posChangeNE
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    

    invisInput:  mov  ah, 7
                 int  21h
                 mov  posInput, al
                 ret  
                      
    output:      mov  dl, character
                 mov  ah, 2
                 int  21h 
                 ret
                   
    ;---------------------------------------;                            
    
    checkPos:    mov  dl, xCheck                                          
                 mov  dh, yCheck
                 mov  ah, 2                                            
                 int  10h
                 mov  bh, 0
                 mov  al, 0
                 mov  ah, 08h
                 int  10h
                 mov  posInfo, al
                 cmp  posInfo, ' '
                 jne  badPos
                 ret  
                      
    badPos:      cmp  posInfo, '*'
                 je   resetMazePos
                 
                 cmp  posInfo, '>'
                 je   newLevel
                     
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2                                            
                 int  10h
                 mov  xCheck, dl
                 mov  yCheck, dh
                 call output
                 jmp  posChange
                 
    ;---------------------------------------;             
                 
    nextLevel:   mov  xCheck, 0
                 mov  yCheck, 0
                 mov  x, 0
                 mov  y, 0
                 mov  dl, x
                 mov  dh, y
                 mov  ah, 2
                 int  10h
    
                 inc  mazeCount
                 call whichMaze
                 
                 mov  si, mazesIndex
                 lea  dx, mazes[si]
                 mov  ah, 9
                 int  21h
                 mov  si, 0
                 ret
    
    newLevel:    mov  al, 03h
                 mov  ah, 0
                 int  10h
                 call nextLevel
                 call newMazePos
                 call output
                 jmp posChange
                 
    newMazePos:  mov  xCheck, 0
                 mov  yCheck, 1
                 mov  x, 0
                 mov  y, 1
                 mov  dl, x
                 mov  dh, y
                 mov  ah, 2
                 int  10h
                 ret  
                                           
    resetMazePos:call newMazePos
                 call output
                 jmp  posChange 

    ;---------------------------------------;
                 
    whichMaze:   mov  si, mazesIndex
                 mov  bh, mazes[si]                
                 cmp  bh, '$'
                 je   endOfMaze
                 jne  nextChar                 
                 
    endOfMaze:   inc  $Count    
                 mov  dx, mazeCount
                 cmp  $Count, dx 
                 je   fin
                 jne  nextChar                  
                 
    nextChar:    inc  mazesIndex
                 loop whichMaze            
                 
    fin:         inc  mazesIndex
                 ;mov  $Count, 0h
                 ret
                        
    ;---------------------------------------;                       
                                                                                                                               
    resetCursor: mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2                                            
                 int  10h                                              
                 mov  dl, ' '                                          
                 mov  ah, 2                                            
                 int  21h
                 ret                 
                                                                     
    
    
    posChangeSW: call resetCursor
                 
                 dec  xCheck                                              
                 inc  yCheck                                           
                 call checkPos
                 
                 dec  x                                              
                 inc  y                                           
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2                                            
                 int  10h                                              
                 call output                                          
                 jmp  posChange                                        
                                                                      
    posChangeS:  call resetCursor
                 
                 inc  yCheck                                           
                 call checkPos
                 
                 inc  y                                           
                 mov  dl, x                                          
                 mov  dh, y    
                 mov  ah, 2                                            
                 int  10h
                 call output                                          
                 jmp  posChange                                        
                                                                      
    posChangeSE: call resetCursor                                              
                 
                 inc  xCheck                                              
                 inc  yCheck                                           
                 call checkPos
                 
                 inc  x                                              
                 inc  y                                           
                 mov  dl, x                                          
                 mov  dh, y                                          
                 mov  ah, 2                                            
                 int  10h                                              
                 call output                                          
                 jmp  posChange
                 
     posChangeW: call resetCursor
                 
                 dec  xCheck
                 call checkPos
                 
                 dec  x
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2
                 int  10h
                 call output
                 jmp  posChange
                 
    posChangeE:  call resetCursor
                 
                 inc  xCheck
                 call checkPos
                 
                 inc  x
                 mov  dl, x
                 mov  dh, y
                 mov  ah, 2
                 int  10h                
                 call output
                 jmp  posChange
                 
    posChangeNW: call resetCursor
                 
                 dec  xCheck
                 dec  yCheck
                 call checkPos
                 
                 dec  x
                 dec  y
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2
                 int  10h
                 call output
                 jmp  posChange
                 
    posChangeN:  call resetCursor
                 
                 dec  yCheck
                 call checkPos
                 
                 dec  y
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2
                 int  10h
                 call output
                 jmp  posChange
                 
    posChangeNE: call resetCursor
                 
                 inc  xCheck
                 dec  yCheck
                 call checkPos    
                 
                 inc  x
                 dec  y
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2
                 int  10h
                 call output
                 jmp  posChange
                
                                
    
        
    
    
    
ends

end start ; set entry point and stop the assembler.
