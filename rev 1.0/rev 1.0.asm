; multi-segment executable file template.

data segment
    
    mazes       db "---------------------------------------------|", 10, 13
                db "   |*             |*       |     |     |     |", 10, 13
                db "|  |------------  |---  |  |  |  |  |  |  |  |", 10, 13
                db "|  |*      *|           |  | *|     |     | *|", 10, 13
                db "|  |--|  ---|  |  |-----|  |------  |-----|  |", 10, 13  
                db "|     |        |  |     |  |        |        |", 10, 13  ;index: 0h
                db "|---* |  |-----|  |  |  |  |  ------|  ------|", 10, 13
                db "|        |        |  |* |  |        |*    |  |", 10, 13
                db "|  ------|  ------|  |--| *|  |---  |--- *|  |", 10, 13
                db "|       *|       *|           |*    |        >", 10, 13
                db "|--------------------------------------------$",   
                                                                       
                db "----------------------------------------------", 10, 13
                db "          |*               |*    | *|        |", 10, 13
                db "|  ---------------|  |-----|  |--|  |  |  |* |", 10, 13
                db "|                    |        |     |* |  |  |", 10, 13
                db "|--| *----------* |  | *-------  |--|  |  | *|", 10, 13  ;index: 020Eh
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
                db "|* |        |  |     |*                |    *|", 10, 13  ;index: 041Ch
                db "|  | *|  |--| *|-----|  -------------------  |", 10, 13
                db "|     |  |*    |*    |*         *|           |", 10, 13
                db "|-----|  |  -------  |  |--------|* |-----|* |", 10, 13
                db "|*       |  |*       | *|*          |    *|  |", 10, 13
                db "|  |-----|  |  |-----|  |  ---------|  |  |--|", 10, 13
                db "|  |*    |     |    *|* |*      *|    *|     |", 10, 13
                db "|------ *|-----|  |  |  |------  |* |------ *|", 10, 13
                db "|*               *|    *|*          |*       &", 10, 13
                db "|--------------------------------------------|$"   
           
    victory     db " __      __        _                   _ ", 10, 13
                db " \ \    / /(_) ___| |_ ___  _ __ _   _| |", 10, 13
                db "  \ \  / / | |/ __| __/ _ \| '__| | | | |", 10, 13
                db "   \ \/ /  | | (__| || (_) | |  | |_| |_|", 10, 13
                db "    \__/   |_|\___|\__\___/|_|   \__, (_)", 10, 13
                db "                                 __/ /   ", 10, 13
                db "                                |___/    ", 10, 13 
                db "                                         ", 10, 13
                db "         left click to exit game         ", 10, 13
                db "                                        $"
            
    titlescreen db " __  __                       ", 10, 13
                db "|  \/  |                      ", 10, 13
                db "| \  / |  __ _  ____ ___  ___ ", 10, 13
                db "| |\/| | / _` ||_  // _ \/ __|", 10, 13
                db "| |  | || (_| | / /|  __/\__ \", 10, 13
                db "|_|  |_| \__,_|/___|\___||___/", 10, 13
                db "       _______________        ", 10, 13
                db "       |              |       ", 10, 13
                db "       |     play     |       ", 10, 13
                db "       |     game     |       ", 10, 13
                db "       |______________|       ", 10, 13
                db "                              $"   
                                   
    x           db 0h
    y           db 0h
    xCheck      db 0h
    yCheck      db 0h  
    posInfo     db 0h
    posInput    db 0h                                                
            
    mouseX      dw 0h
    MouseY      dw 0h
    mouseClick  dw 0h            
    mousePos    dw 0h
            
    mazesIndex  dw 0h
    mazeCount   dw 0h
    $Count      dw 0h
    
    character db 01h    
    
ends

stack segment
    
    dw   128  dup(0)
    
ends

code segment  
    
    start:  ; set segment registers:
    
    mov  ax, data
    mov  ds, ax
    mov  es, ax
    
    call clearScreen
   
    lea  dx, titlescreen             
    mov  ah, 9
    int  21h
   
    mouse:
    
    mov  ax, 3h
    int  33h
    mov  mouseClick, bx
    mov  mouseX, cx
    mov  mouseY, dx
    call checkMClick                    
    cmp  mousePos, 1h
    je   goodMPos
    jne  badMPos

    goodMPos:
    
    call firstLevel   
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
    
    exit:
    
    call clearScreen
    
    mov  ax, 4c00h
    int  21h    
         
    ;---------------------------------------;
    
    invisInput:  mov  ah, 7h
                 int  21h 
                 mov  posInput, al
                 ret  
                      
    output:      mov  dl, character
                 mov  ah, 2h
                 int  21h 
                 ret
                   
    ;---------------------------------------;                            
    
    checkMClick: cmp  mouseClick, 1h 
                 je   checkMouseX
                 jne  mouse  
                 
    checkMouseX: cmp  mouseX, 36h
                 jae  afterStartX
                 jb   mouse
                 
    afterStartX: cmp  mouseX, 0b8h
                 jbe  goodXPos
                 ja   badMPos
                 
    goodXPos:    mov  mousePos, 1h
                 jmp  checkMouseY
   
    checkMouseY: cmp  mouseY, 36h
                 jae  afterStartY
                 jb   mouse
                 
    afterStartY: cmp  mouseY, 58h
                 jbe  goodYPos
                 ja   badMPos                 
                 
    goodYPos:    mov  mousePos, 1h
                 ret                 
                                                      
    badMPos:     mov  mousePos, 0h
                 jmp  mouse
                     
    ;---------------------------------------;
    
    checkPos:    mov  dl, xCheck                                          
                 mov  dh, yCheck
                 mov  ah, 2h                                            
                 int  10h
                 mov  bh, 0h
                 mov  al, 0h
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
                 
                 cmp  posInfo, '&'
                 je   win
                     
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2h                                            
                 int  10h
                 mov  xCheck, dl
                 mov  yCheck, dh
                 call output
                 jmp  posChange 
                 
    resetCursor: mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2h                                            
                 int  10h                                              
                 mov  dl, ' '                                          
                 mov  ah, 2h                                            
                 int  21h
                 ret
                 
    clearScreen: mov  al, 3h
                 mov  ah, 0h
                 int  10h
                 ret         
                         
    ;---------------------------------------;             
    
    win:         call clearScreen
    
                 lea  dx, victory
                 mov  ah, 9h
                 int  21h
                 jmp  exitGame
                 
    exitGame:    mov  ax, 3h
                 int  33h
                 mov  mouseClick, bx
                 
                 cmp  mouseClick, 01h
                 je   exit
                 jne  exitGame
                 
    
    firstLevel:  call clearScreen
                 
                 mov  si, mazesIndex                     
                 lea  dx, mazes[si]
                 mov  ah, 9h
                 int  21h
                 mov  si, 0h 
                 
                 ret
                 
    nextLevel:   call clearScreen
                 
                 inc  mazeCount
                 call whichMaze
                 
                 mov  si, mazesIndex
                 lea  dx, mazes[si]
                 mov  ah, 9h
                 int  21h
                 mov  si, 0h
                 ret
    
    newLevel:    call nextLevel
                 call newMazePos
                 call output
                 jmp posChange
                 
    newMazePos:  mov  xCheck, 0h
                 mov  yCheck, 1h
                 mov  x, 0h
                 mov  y, 1h
                 mov  dl, x
                 mov  dh, y
                 mov  bh, 0h
                 mov  ah, 2h
                 int  10h
                 ret  
                                           
    resetMazePos:call newMazePos
                 call output
                 jmp  posChange 

    ;---------------------------------------;
                 
    whichMaze:   mov  si, mazesIndex
                 mov  bl, mazes[si]                
                 cmp  bl, '$'
                 je   endOfMaze
                 jne  nextChar                 
                 
    endOfMaze:   inc  $Count    
                 mov  dx, mazeCount
                 cmp  $Count, dx 
                 je   fin
                 jne  nextChar                  
                 
    nextChar:    inc  mazesIndex
                 jmp  whichMaze            
                 
    fin:         inc  mazesIndex
                 ret
                        
    ;---------------------------------------;                       
                                                                                                                               
    posChangeSW: call resetCursor
                 
                 dec  xCheck                                              
                 inc  yCheck                                           
                 call checkPos
                 
                 dec  x                                              
                 inc  y                                           
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2h                                            
                 int  10h                                              
                 call output                                          
                 jmp  posChange                                        
                                                                      
    posChangeS:  call resetCursor
                 
                 inc  yCheck                                           
                 call checkPos
                 
                 inc  y                                           
                 mov  dl, x                                          
                 mov  dh, y    
                 mov  ah, 2h                                            
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
                 mov  ah, 2h                                            
                 int  10h                                              
                 call output                                          
                 jmp  posChange
                 
    posChangeW:  call resetCursor
                 
                 dec  xCheck
                 call checkPos
                 
                 dec  x
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2h
                 int  10h
                 call output
                 jmp  posChange
                 
    posChangeE:  call resetCursor
                 
                 inc  xCheck
                 call checkPos
                 
                 inc  x
                 mov  dl, x
                 mov  dh, y
                 mov  ah, 2h
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
                 mov  ah, 2h
                 int  10h
                 call output
                 jmp  posChange
                 
    posChangeN:  call resetCursor
                 
                 dec  yCheck
                 call checkPos
                 
                 dec  y
                 mov  dl, x                                          
                 mov  dh, y
                 mov  ah, 2h
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
                 mov  ah, 2h
                 int  10h
                 call output
                 jmp  posChange
                
                        
                        
ends

end start ; set entry point and stop the assembler.
