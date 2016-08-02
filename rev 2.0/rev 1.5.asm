data segment
    
    mazes       db "---------------------------------------------|", 0Ah, 0Dh
                db "   |*             |*       |     |     |     |", 0Ah, 0Dh
                db "|  |------------  |---  |  |  |  |  |  |  |  |", 0Ah, 0Dh
                db "|  |*      *|           |  | *|     |     | *|", 0Ah, 0Dh
                db "|  |--|  ---|  |  |-----|  |------  |-----|  |", 0Ah, 0Dh  
                db "|     |        |  |     |  |        |        |", 0Ah, 0Dh  ;index: 0h
                db "|---* |  |-----|  |  |  |  |  ------|  ------|", 0Ah, 0Dh
                db "|        |        |  |* |  |        |*    |  |", 0Ah, 0Dh
                db "|  ------|  ------|  |--| *|  |---  |--- *|  |", 0Ah, 0Dh
                db "|       *|       *|           |*    |        ¯", 0Ah, 0Dh
                db "|--------------------------------------------|$",      
                
                db "----------------------------------------------", 0Ah, 0Dh
                db "          |*               |*    | *|        |", 0Ah, 0Dh
                db "|  ---------------|  |-----|  |--|  |  |  |* |", 0Ah, 0Dh
                db "|                    |        |     |* |  |  |", 0Ah, 0Dh
                db "|--| *----------* |  | *-------  |--|  |  | *|", 0Ah, 0Dh  ;index: 020Eh
                db "|* |     |*       |  |              |  *  |  |", 0Ah, 0Dh
                db "|  |---  |  |---  |  |  |--------|  |  |--|* |", 0Ah, 0Dh
                db "|       *|  |    *|     |        |    *|* |  |", 0Ah, 0Dh
                db "|  ---|  |--|  |--------|  | *-------  |  | *|", 0Ah, 0Dh
                db "|    *|        |*          |           |     ¯", 0Ah, 0Dh
                db "---------------------------------------------|$",      
                
                db "---------------------------------------------|", 0Ah, 0Dh
                db "   |*       |        | *|        |*          |", 0Ah, 0Dh
                db "|* |  |---* |  |--|  |  |  |---  |  |-----| *|", 0Ah, 0Dh
                db "|    *|*       | *|  |     |*    | *|     |  |", 0Ah, 0Dh
                db "|-----|  |  ---|  |  |* |--|  -------* |* |* |", 0Ah, 0Dh
                db "|*      *|*    |  |     |*             |     |", 0Ah, 0Dh
                db "|--------|  |* |  |  |--------------- *| *---|", 0Ah, 0Dh
                db "|* |        |  |     |*                |    *|", 0Ah, 0Dh  ;index: 041Ch
                db "|  | *|  |--| *|-----|  -------------------  |", 0Ah, 0Dh
                db "|     |  |*    |*    |*         *|           |", 0Ah, 0Dh
                db "|-----|  |  -------  |  |--------|* |-----|* |", 0Ah, 0Dh
                db "|*       |  |*       | *|*          |    *|  |", 0Ah, 0Dh
                db "|  |-----|  |  |-----|  |  ---------|  |  |--|", 0Ah, 0Dh
                db "|  |*    |     |    *|* |*      *|    *|     |", 0Ah, 0Dh
                db "|------ *|-----|  |  |  |------  |* |------ *|", 0Ah, 0Dh
                db "|*               *|    *|*          |*       è", 0Ah, 0Dh
                db "|--------------------------------------------|$"   
           
    victory     db " __      __        _                   _ ", 0Ah, 0Dh
                db " \ \    / /(_) ___| |_ ___  _ __ _   _| |", 0Ah, 0Dh
                db "  \ \  / / | |/ __| __/ _ \| '__| | | | |", 0Ah, 0Dh
                db "   \ \/ /  | | (__| || (_) | |  | |_| |_|", 0Ah, 0Dh
                db "    \__/   |_|\___|\__\___/|_|   \__, (_)", 0Ah, 0Dh
                db "                                 __/ /   ", 0Ah, 0Dh
                db "                                |___/    ", 0Ah, 0Dh 
                db "                                         ", 0Ah, 0Dh
                db "         left click to exit game         ", 0Ah, 0Dh
                db "                                         $"                
            
    titleScreen db "  __  __                      ", 0Ah, 0Dh
                db " |  \/  |                     ", 0Ah, 0Dh
                db " | .  . | __ _ _______  ___   ", 0Ah, 0Dh
                db " | |\/| |/ _` |_  / _ \/ __|  ", 0Ah, 0Dh
                db " | |  | | (_| |/ /  __/\__ \  ", 0Ah, 0Dh
                db " |_|  |_|\__,_/___\___||___/  ", 0Ah, 0Dh
                db "       _______________        ", 0Ah, 0Dh
                db "       |              |       ", 0Ah, 0Dh
                db "       |     play     |       ", 0Ah, 0Dh
                db "       |     game     |       ", 0Ah, 0Dh
                db "       |______________|       ", 0Ah, 0Dh
                db "                              ", 0Ah, 0Dh       
                db "       >press for cheats     $" 
                
    cheatScreen db " _____  _                _       ", 0Ah, 0Dh
                db "/  __ \| |              | |      ", 0Ah, 0Dh
                db "| /  \/| |__   ___  __ _| |_ ___ ", 0Ah, 0Dh
                db "||     |  _ \ / _ \/ _` | __/ __|", 0Ah, 0Dh
                db "| \__/\| | | |  __/ (_| | |_\__ \", 0Ah, 0Dh
                db " \____/|_| |_|\___|\__,_|\__|___/", 0Ah, 0Dh
                db "                                 ", 0Ah, 0Dh
                db "           change level          ", 0Ah, 0Dh
                db "                                 ", 0Ah, 0Dh
                db "         change character        ", 0Ah, 0Dh
                db "                                $"
                
    changeStartScreen     db "enter starting level: $"
    
    changeCharacterScreen db "enter character: ", 0Ah, 0Dh
                          db "                 ", 0Ah, 0Dh
                          db "choose from: (1)", 0Ah, 0Dh
                          db "             (2)", 0Ah, 0Dh
                          db "             (3)", 0Ah, 0Dh
                          db "             (4)", 0Ah, 0Dh
                          db "             (5)", 0Ah, 0Dh
                          db "             (6)$"
                                                             
    errorScreen db "                   __---__                      ", 0Ah, 0Dh
                db "                 _-       \--________           ", 0Ah, 0Dh
                db "            __--( /     \ )XXXXXXXXXXX\         ", 0Ah, 0Dh
                db "          .-XXX(   O   O  )XXXXXXXXXXXXXXX\     ", 0Ah, 0Dh
                db "         /XXX(       U     )        XXXXXXX\    ", 0Ah, 0Dh
                db "       /XXXXX(              )--_  XXXXXXXXXXX\  ", 0Ah, 0Dh
                db "      /XXXXX/ (      O     )   XXXXXX   \XXXXX\ ", 0Ah, 0Dh
                db "      XXXXX/   /            XXXXXX   \__ \XXXXX ", 0Ah, 0Dh
                db "      XXXXXX__/          XXXXXX         \__---->", 0Ah, 0Dh
                db "____  XXX__/          XXXXXX      \__         / ", 0Ah, 0Dh
                db "\-  --__/   ___/\  XXXXXX            /  ___--/X ", 0Ah, 0Dh
                db " \-\    ___/    XXXXXX              '--- XXXXXX ", 0Ah, 0Dh
                db "    \-\/XXX\ XXXXXX                      /XXXXX ", 0Ah, 0Dh
                db "      \XXXXXXXXX   \                    /XXXXX/ ", 0Ah, 0Dh
                db "       \XXXXXX      >                 _/XXXXX/  ", 0Ah, 0Dh
                db "         \XXXXX--__/              __-- XXXX/    ", 0Ah, 0Dh
                db "          \XXXXXXXX---------------  XXXXXX/     ", 0Ah, 0Dh
                db "             \XXXXXXXXXXXXXXXXXXXXXXXXXX/       ", 0Ah, 0Dh
                db "               \XXXXXXXXXXXXXXXXXX/             ", 0Ah, 0Dh
                db "               _____                            ", 0Ah, 0Dh
                db "              |  ___|                           ", 0Ah, 0Dh
                db "              | |__  _ __ _ __ ___  _ __        ", 0Ah, 0Dh
                db "              |  __|| '__| '__/ _ \| '__|       ", 0Ah, 0Dh
                db "              | |__ | |  | | | (_) | |          ", 0Ah, 0Dh
                db "              |____||_|  |_|  \___/|_|          ", 0Ah, 0Dh
                db "                You pressed a bad key!          ", 0Ah, 0Dh
                db "                  click to restart             $"
                                
    x                    db 0h
    y                    db 0h
    xCheck               db 0h
    yCheck               db 0h  
    posInfo              db 0h
    posInput             db 0h                                                
                         
    mouseX               dw 0h
    MouseY               dw 0h
    mouseClick           dw 0h            
    startMPos            db 0h
                     
    checkCheatStart      dw 0h              
    checkCheatCharacter  dw 0h
                         
    mazesIndex           dw 0h
    mazeCount            dw 0h
    $Count               dw 0h
                         
    character            db 01h    
    
ends

stack segment
    
    dw   128  dup(0)
    
ends

code segment  
    
    start:  ; set segment registers:
    
    mov  ax, data
    mov  ds, ax
    mov  es, ax
    
    beginning:
    
    call clearScreen
   
    lea  dx, titlescreen             
    mov  ah, 9
    int  21h
   
    startMouse:
    
    mov  ax, 3h
    int  33h
    mov  mouseClick, bx
    mov  mouseX, cx
    mov  mouseY, dx
    
    call checkStartMClick                    
    
    cmp  startMPos, 1h
    je   goodStartMPos
    jne  badStartMPos
    
    cheats:   
    
    call clearScreen
    
    lea  dx, cheatScreen
    mov  ah, 9h
    int  21h
    
    cheatsMouse:
    
    mov  ax, 3h
    int  33h
    mov  mouseClick, bx
    mov  mouseX, cx
    mov  mouseY, dx
    
    call checkCheatsMClick
    
    cmp  checkCheatStart, 1h
    je   changeStart
    
    cmp  checkCheatCharacter, 1h
    je   changeCharacter
    
    changeStart:
    
    call clearScreen
    
    lea  dx, changeStartScreen
    mov  ah, 9h
    int  21h 
    
    mov  dl, 16h
    mov  dh, 0h
    mov  bh, 0h
    mov  ah, 2h
    int  10h
    
    mov  ah, 1h
    int  21h
         
    sub  al, 32h         
    mov  byte ptr mazeCount, al
    call newLevel
    
    changeCharacter:
    
    call clearScreen
    
    lea  dx, changeCharacterScreen
    mov  ah, 9h
    int  21h 
    
    mov  dl, 11h
    mov  dh, 0h
    mov  bh, 0h
    mov  ah, 2h
    int  10h
    
    mov  ah, 1h
    int  21h
    
    sub  al, 30h
    mov  character, al
    jmp  goodStartMPos
    
    goodStartMPos:
    
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
    cmp  posInput, '5'
    je   error
    
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
    
    checkStartMClick:
    
                 cmp  mouseClick, 1h 
                 je   checkMouseX
                 jne  startMouse  
                 
    checkMouseX: cmp  mouseX, 36h
                 jae  afterStartX
                 jb   startMouse
                 
    afterStartX: cmp  mouseX, 0B8h
                 jbe  goodStartXPos
                 ja   checkCheatX
                 
    goodStartXPos:                
    
                 mov  startMPos, 1h
                 jmp  checkStartMouseY
   
    checkStartMouseY: 
    
                 cmp  mouseY, 36h
                 jae  afterStartY
                 jb   startMouse
                 
    afterStartY: cmp  mouseY, 58h
                 jbe  goodStartYPos
                 ja   checkCheatY1                 
                    
    goodStartYPos:
                 mov  startMPos, 1h
                 ret                 
                                  
    checkCheatX: cmp  mouseX, 0C0h
                 jbe  cheats
                 ja   badStartMPos                   
                                                      
    checkCheatY1:cmp  mouseY, 60h
                 jae  checkCheatY2
                 jb   badStartMPos
                                  
    checkCheatY2:cmp  mouseY, 68h
                 jbe  cheats
                 ja   badStartMPos                                 
                                                      
    badStartMPos:mov  startMPos, 0h
                 jmp  startMouse
    
    ;---------------------------------------;
    
    checkCheatsMClick:
    
                 cmp  mouseClick, 1h 
                 je   checkCheatsMouseX1
                 jne  cheatsMouse
    
    checkCheatsMouseX1:
                 
                 cmp  mouseX, 60h
                 jae  afterCheatsX1
                 jb   checkCheatsMouseX2
                                        
    afterCheatsX1:
                 
                 cmp  mouseX, 0B8h
                 jbe  checkCheatsMouseY11
                 ja   checkCheatsMouseX2
                 
    checkCheatsMouseX2:
    
                 cmp  mouseX, 50h
                 jae  afterCheatsX2
                 jb   badCheatsMPos                                  
                                   
    afterCheatsX2:
    
                 cmp  mouseX, 0D0h
                 jbe  checkCheatsMouseY21
                 ja   badCheatsMPos
                                                                      
    checkCheatsMouseY11:
    
                 cmp  mouseY, 03Ah
                 jae  checkCheatsMouseY12
                 jb   badCheatsMPos  
    
    checkCheatsMouseY12:
    
                 cmp  mouseY, 40h
                 jbe  cheatsStart
                 ja   checkCheatsMouseY21
                 
    checkCheatsMouseY21:                 
                
                 cmp  mouseY, 48h
                 jae  cheatsCharacter
                 jb   badCheatsMPos                                                         
    
    checkCheatsMouseY22:                 
                
                 cmp  mouseY, 50h
                 jbe  cheatsCharacter
                 ja   badCheatsMPos                                                         
    
    cheatsStart: mov  checkCheatStart, 1h
                 ret
    
    cheatsCharacter:
                
                 mov  checkCheatCharacter, 1h
                 ret
                                        
    badCheatsMPos:
                 mov  checkCheatStart, 0h
                 mov  checkCheatCharacter, 0h
                 jmp  cheatsMouse
                                        
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
                 
                 cmp  posInfo, '¯'
                 je   newLevel 
                 
                 cmp  posInfo, 'è'
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
    
    ;---------------------------------------;
                 
    clearScreen: mov  al, 3h
                 mov  ah, 0h
                 int  10h
                 ret 
                 
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
                 
    error:       call clearScreen
                 
                 lea  dx, errorScreen
                 mov  ah, 9h
                 int  21h
                 
                 jmp  waitForClick                 
                 
    waitForClick:mov  ax, 3h
                 int  33h
                 mov  mouseClick, bx
                 
                 cmp  mouseClick, 01h
                 je   restart
                 jne  waitForClick
                 
    restart:     mov  mazesIndex, 0h
                 mov  mazeCount, 0h                 
                 mov  $Count, 0h
                 
                 jmp  beginning         ;jumps to main menu
                 
                 ;call clearScreen
                 ;
                 ;mov  si, mazesIndex                                            
                 ;lea  dx, mazes[si]
                 ;mov  ah, 9h
                 ;int  21h              ;jumps to first maze
                 ;mov  si, 0h
                 ;
                 ;call newMazePos
                 ;call output
                 ;jmp  posChange
                 
    ;---------------------------------------;             
    
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
