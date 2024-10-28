data segment
    ; add your data here!
    IMAGE_HEIGHT EQU 25
    IMAGE_WIDTH  EQU 25  
    GRAY EQU 7
    DARK_GRAY EQU 8
    GREEN EQU 2
    COLOR EQU 4
    COLOR2 EQU 5 
    LEGAL_BLOCK EQU 3
    DARK_GRAY_BLOCK1 EQU 2
    GRAY_BLOCK1 EQU 0
    PLAYER1_BLOCK EQU 12
    PLAYER2_BLOCK EQU 11 
    WINNING_POINTS EQU 12
    ;gray block of 25 * 25 pixels     
    gray_block db IMAGE_HEIGHT * IMAGE_WIDTH dup (GRAY)  
    ;dark gray block of 25 * 25 pixels
    dark_gray_block db IMAGE_HEIGHT * IMAGE_WIDTH dup (DARK_GRAY) 
    ;green block of 25 * 25 pixels
    green_block db IMAGE_HEIGHT * IMAGE_WIDTH dup (GREEN)
   
    ;player1 (25 * 25 pixels)
    player1 db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY 
            
   ;player2 (25 * 25 pixels)         
   player2  db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY
            db DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY,DARK_GRAY 
     ;player1 pressed (25 * 25 pixels)
     player_pressed db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,COLOR,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
     
      ;player2 pressed (25 * 25 pixels)
      player2_pressed db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,COLOR2,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                    db GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN
                 
    
    ;; the arr board represents the board player2 = 11 ,player1 = 12 ,gray block =  0 ,dark gray block = 2     
           
     board  db GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK
            db PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1
            db GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK
            db DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1
            db GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1
            db PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1
            db GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK
            db PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1        
       
     ;the second board is used when the game is restarted      
     board2 db GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK
            db PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1
            db GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK,GRAY_BLOCK1,PLAYER2_BLOCK
            db DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1
            db GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1,GRAY_BLOCK1,DARK_GRAY_BLOCK1
            db PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1
            db GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK
            db PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1,PLAYER1_BLOCK,GRAY_BLOCK1     
   
        
     
        
   
    image_pos_block dw 0   
    x_pos dw 0
    y_pos dw 0 
    x_block dw 0
    y_block dw 0
    num_in_arr db 0  
    player_turn db 0    
    mouse dw 0  
    points_player2 db 0
    points_player1 db 0 
    player2_wins db "player 2 wins$" 
    player1_wins db "player 1 wins$" 
    start_str db "press y to start$"
    start_str1 db "welcome to itamars$"
    start_str2 db "special checkers$"
    start_str3 db "press i to see the instructions$"
    end_str1 db "press y to play again$"
    end_str2 db "press x to exit$"
    instructions db "you can move in a diagonal$"
    instructions2 db "forward or back to the green blocks$"
    instructions3 db "you can also capture players$"
    instructions4 db "forward or back to the green blocks$"     
    x_block_temp dw 0  
    y_block_temp dw 0             
    free_block_jump_top_right db 0
    capture_top_right db 0 
    free_block_jump_bottom_right db 0
    capture_bottom_right db 0     
    free_block_jump_top_left db 0
    capture_top_left db 0
    free_block_jump_bottom_left db 0
    capture_bottom_left db 0 
         
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
    mov ax, 0a000h
    mov es, ax
    
    ;;graphics mode 
    xor ax,ax
    mov al, 13h
    int 10h 

    
start_game: 
    ;reset the points and make the first turn player1
    mov points_player2,0 
    mov points_player1,0
    mov player_turn,0
    
    ;reset the board, if the player wants to play again the board is reseted in the memory
    call reset_all
    
    ;wipes the screen
    mov ax,0600h
    mov bh, 00h
    mov cx, 0000h 
    mov dx, 184fh
    int 10h     
    
    ;draws the original board for the opening screen
    call draw_screen_by_arr
    
;writes the opening lines 
    push 11  ;x
    push 9 ;y
    push offset start_str1
    call print_line 
    
    push 12 ;x
    push 11 ;y
    push offset start_str2
    call print_line           

    push 12 ;x
    push 13 ;y
    push offset start_str
    
    call print_line
    push 4  ;x
    push 15 ;y
    push offset start_str3
    call print_line
        
    push 12 ;x
    push 17 ;y
    push offset end_str2
    call print_line

    
wait_for_key:
    xor ax, ax    
    mov ah,0Ch
    mov al,7
    int 21h
    ; if i go to the instructions
    cmp al,'i'
    je instructions_game         
    ;if y start the game
    cmp al,'y'          
    je start2           
    ;if x exit the game
    cmp al,'x'
    je done_playing
    jmp wait_for_key

    
start2:
    ;wipes the screen
    mov ax,0600h
    mov bh, 00h
    mov cx, 0000h 
    mov dx, 184fh
    int 10h
    
    ;draws the original board for the game screen
    call draw_screen_by_arr
    jmp loop1 


;writes the game instructions    
instructions_game:

    ;wipes the screen
    mov ax,0600h
    mov bh, 00h
    mov cx, 0000h 
    mov dx, 184fh
    int 10h   
    
;writes the instructions    
    push 7 ;x
    push 5 ;y
    push offset instructions
    call print_line
    
    push 2 ;x
    push 7 ;y
    push offset instructions2
    call print_line
    
    push 6  ;x
    push 9  ;y
    push offset instructions3
    call print_line
     
    push 2  ;x
    push 11 ;y
    push offset instructions4
    call print_line
    
    push 12 ;x
    push 15 ;y
    push offset start_str
    call print_line
    
    push 12 ;x
    push 17 ;y
    push offset end_str2
    call print_line
    jmp wait_for_key
    
    
loop1:

    ;delay
    call delay       
    ;show the mouse
    mov ax,1h
    int 33h 
    ;reset the button for the mouse 
    mov mouse,0   
    
    ; gets the mouse pos and checks that the x is between 60 and 260 (the board) if it isnt it is called again and checked again
    call check_mouse_on_board
    jmp nxt

;; checks if the mouse is pressed    
nxt:
    cmp mouse,1
    je find_pressed     
    jmp loop1


;; finds where the mouse was pressed and checks if it was on a player
    
find_pressed:
   ;; gets the x,y of the block that was clicked
   push x_pos
   push y_pos   
   call get_block
   
   ;finds what was clicked
   ;12 = player1
   ;11 = player2
   ;3 = legal block
   ;2 = DARK_GRAY block
   ;0 = GRAY block
   push offset board 
   push x_block
   push y_block
   call find_num_in_arr
   
   cmp num_in_arr,PLAYER1_BLOCK
   je check_turn_player1
   cmp num_in_arr,PLAYER2_BLOCK
   je check_turn_player2
   jmp loop1   

;;;;; checks whos turn it is        
check_turn_player1:
   cmp player_turn,0
   je nxt2
   jmp loop1

check_turn_player2:
   cmp player_turn,1
   je nxt3
   jmp loop1



nxt2:
   ;11 is player2 so I can check if i need to capture in the procedure inside find_player_pressed
   push PLAYER2_BLOCK
   ;the offset of the player pressed is pushed so i can draw the player pressed
   push offset player_pressed 
   ;send the x,y of the block pushed
   push x_block
   push y_block
   call find_player_pressed  
   jmp find_move_player1
   
find_move_player1:
    ;show the mouse
    mov ax,1h
    int 33h
    ;reset the button for the mouse  
    mov mouse,0 
    ;call mouse and checks that it is on the board 
    call check_mouse_on_board
    jmp continue_checking
        
continue_checking:
    ;check if left button is pressed
    cmp mouse,1   
    jne find_move_player1 
    ;finds the num in the pressed block
    push x_pos
    push y_pos
    push x_block
    push y_block
    call find_num_in_block
    ;; checks if the place where the mouse was pressed is 3 in the arr (3 = legal block to move to) 
    cmp num_in_arr,LEGAL_BLOCK
    je check_moves_player1 
    ; checks if the selected block is also player1 and if so we need to change the legal moves
    cmp num_in_arr,PLAYER1_BLOCK
    je change_player1
    jmp find_move_player1 
    
change_player1:
    ;pushes the original x,y of the selected block (was saved in find_player_pressed) 
    push PLAYER1_BLOCK
    push x_block_temp
    push y_block_temp
    call move_player
    jmp loop1 
    
      
    
check_moves_player1:    
    ;; checks what the move is 
    push x_block_temp
    push y_block_temp
    push x_block
    push y_block
    call check_what_to_do
    
    ;; top right is right in player1
    cmp free_block_jump_top_right,1 
    je draw_player1_place         
    
    ;; top right is right in player1
    cmp capture_top_right,1
    je draw_player1_capture_right
    
    ;; bottom right is bottom right in player1
    cmp free_block_jump_bottom_right,1
    je draw_player1_place
     
    cmp capture_bottom_right,1
    je draw_player1_capture_bottom_right 
    
    ;; top left is left in player1
    cmp free_block_jump_top_left,1
    je draw_player1_place
           
    cmp capture_top_left,1
    je draw_player1_capture_left
    
    ;; bottom left is bottom left in player1
    cmp free_block_jump_bottom_left,1
    je draw_player1_place
    
    
    cmp capture_bottom_left,1
    je draw_player1_capture_bottom_left
    jmp find_move_player1  
       
    
;;;;;; changes the 2d array acording to the move (if capture the player capture is turned to 2 and thus deleted and we add 1 point)    
draw_player1_capture_right:
    push -1 ; add to x_block
    push 1  ; add to y_block 
    jmp push_block

    


draw_player1_capture_left:
    push 1 ; add to x_block
    push 1 ; add to y_block
    jmp push_block
    

draw_player1_capture_bottom_right:
    push -1  ; add to x_block
    push -1  ; add to y_block
    jmp push_block
    



draw_player1_capture_bottom_left:
    push 1  ; add to x_block
    push -1 ; add to y_block
    jmp push_block


push_block:
    ;captures the player and adds a point
    push x_block
    push y_block
    call capture_player
    add points_player1,1
    jmp draw_player1_place
    
;;; changes the arr in the new place to 12 (player1)     
draw_player1_place:
    push PLAYER1_BLOCK
    push x_block
    push y_block
    call move_player
    ;show mouse
    mov ax,1h
    int 33h    
    ;; changes the player turn
    mov player_turn,1 
    ;checks if player1 reached 12 points (won the game)
    cmp points_player1,WINNING_POINTS
    je draw_player1_winner 
    jmp loop1 



nxt3:
   ;12 is player1 so I can check if i need to capture in the procedure inside find_player_pressed
   push PLAYER1_BLOCK
   ;the offset of the player pressed is pushed so i can draw the player pressed
   push offset player2_pressed
   ;send the x,y of the block pushed
   push x_block
   push y_block
   call find_player_pressed
   jmp find_move_player2
    
;;;; waits until the mouse is clicked, finds where the mouse was clicked and checks if it was in a legal place 
find_move_player2:
    ;shows the mouse
    mov ax,1h
    int 33h
    ;reset the button for the mouse 
    mov mouse,0 
    ;call mouse and checks that it is on the board 
    call check_mouse_on_board
    jmp continue_checking2
        
continue_checking2:
    ;check if left button is pressed 
    cmp mouse,1
    jne find_move_player2
    ;finds the num in the pressed block
    push x_pos
    push y_pos
    push x_block
    push y_block
    call find_num_in_block
    ; checks if the place where the mouse was pressed is 3 in the arr (3 = legal block to move to)
    cmp num_in_arr,LEGAL_BLOCK
    je check_moves_player2
    
    ;checks if the selected block is player2 (the same)
    cmp num_in_arr,PLAYER2_BLOCK
    je change_player2
    jmp find_move_player2
    
change_player2:
    ;pushes the original x,y of the selected block (was saved in find_player_pressed) 
    push PLAYER2_BLOCK
    push x_block_temp
    push y_block_temp
    call move_player
    jmp loop1
    

    
   
   ;; checks what the move is
check_moves_player2:
    push x_block_temp
    push y_block_temp    
    push x_block
    push y_block    
    call check_what_to_do
    
    ;; top right is bottom right in player2
    cmp free_block_jump_top_right,1 
    je draw_player2_place     
        
    ;; top right is bottom right in player2
    cmp capture_top_right,1
    je draw_player2_capture_bottom_right 
            
    ;; bottom right is top right in player2
    cmp free_block_jump_bottom_right,1
    je draw_player2_place
    
    ;; bottom right is top right in player2
    cmp capture_bottom_right,1
    je draw_player2_capture_right 
    
    ;; top left is bottom left in player2
    cmp free_block_jump_top_left,1
    je draw_player2_place
              
    ;; top left is bottom left in player2
    cmp capture_top_left,1
    je draw_player2_capture_bottom_left
    
    ;; bottom left is top left in player2
    cmp free_block_jump_bottom_left,1
    je draw_player2_place
    
    cmp  capture_bottom_left,1
    je draw_player2_capture_left   
    jmp find_move_player2

;;;;;;; changes the 2d array acording to the move (if capture the player captured is turned to 2 and thus deleted and we add 1 point)
draw_player2_capture_right:  
    push -1 ; add to x_block
    push -1 ; add to y_block
    jmp push_block2  
    
draw_player2_capture_left:
    push 1  ; add to x_block
    push -1 ; add to y_block
    jmp push_block2     

draw_player2_capture_bottom_right:
    push -1 ; add to x_block
    push 1  ; add to y_block
    jmp push_block2    

draw_player2_capture_bottom_left:
    push 1  ; add to x_block
    push 1  ; add to y_block
    jmp push_block2   

push_block2: 
    push x_block
    push y_block
    call capture_player
    add points_player2,1
    jmp draw_player2_place

;;;; changes the arr in the new place to 11 (player2) 
draw_player2_place: 
    push PLAYER2_BLOCK
    push x_block
    push y_block
    call move_player
    ;show mouse
    mov ax,1h
    int 33h 
    ;; changes the player turn
    mov player_turn,0
    ;checks if player2 reached 12 points (won the game)
    cmp points_player2,WINNING_POINTS
    je draw_player2_winner
    jmp loop1 




;;; if player1 points = 12 then player1 has won the screen is wiped and a message is shown      
draw_player1_winner:
    push offset player1_wins
    call player_winner_screen
    jmp check_options
   
;;; if player2 points = 12 then player2 has won the screen is wiped and a message is shown    
draw_player2_winner:
    push offset player2_wins
    call player_winner_screen
    jmp check_options


check_options:    
    xor ax, ax
    ;waiting for any key
    mov ah,0Ch
    mov al,7    
    int 21h
    ;if y restart game
    cmp al,'y'
    je start_game    
    ;if x exit
    cmp al,'x'
    je done_playing  
    jmp check_options
    
    
done_playing:
    ;wipes the screen
    mov ax,0600h
    mov bh, 00h
    mov cx, 0000h 
    mov dx, 184fh
    int 10h         
    
    ; exit to operating system                  
    mov ax, 4c00h 
    int 21h 
    
        
ends


X_POS_PUSHED1 EQU bp + 10
Y_POS_PUSHED1 EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4    
proc find_num_in_block
    push bp
    mov bp,sp
    ; finds the x,y of the selected block
    push [X_POS_PUSHED1]
    push [Y_POS_PUSHED1] 
    call get_block
    ;finds the number in the selected block
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr
    pop bp
    ret 8
endp find_num_in_block

proc check_mouse_on_board
    pusha
    call get_mouse_pos
    cmp x_pos,60
    jb call_again
    cmp x_pos,260
    ja call_again
    jmp mouse_on_board    
call_again:   
    call get_mouse_pos
    cmp x_pos,60
    jb call_again
    cmp x_pos,260
    ja call_again
    jmp mouse_on_board

mouse_on_board:
    popa
    ret
endp check_mouse_on_board




;writes the winning player and his options
PLAYER_WIN_STR_OFFSET EQU bp + 4
proc player_winner_screen
    push bp
    mov bp,sp 
    ;push the offset of player wins message
    push 14
    push 8
    push [PLAYER_WIN_STR_OFFSET] 
    call print_line
    ; writes the ending lines 
    push 10
    push 10
    push offset end_str1
    call print_line
    push 13
    push 12
    push offset end_str2
    call print_line
    pop bp
    ret 2
endp player_winner_screen  



proc delay
    ;creates a delay
    push cx
    push dx
    push ax
    mov cx, 00H
    mov dx, 2H
    mov ah, 86H
    int 15h 
    pop ax
    pop dx
    pop cx
    ret
endp delay



PLAYER_NUMBER_PUSHED EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc move_player
    push bp
    mov bp,sp
    push ax
    ;changes the number in the cur x,y  to the player number
    push [PLAYER_NUMBER_PUSHED]
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr    
    ;resets the screen (replaces all the 3(legal blocks) bottom to 2 because we have selected a new player)
    call reset_screen 
    ;hides the mouse
    mov ax,2h
    int 33h 
    ; after reseting the screen the screen is redrawn
    call draw_screen_by_arr
    pop ax
    pop bp
    ret 6
endp move_player



PLAYER_TYPE_PUSHED EQU bp + 10
OFFSET_PLAYER_PRESSED EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc find_player_pressed
   push bp 
   mov bp,sp
   push ax
   push cx
   mov ax,2h
   int 33h   
   ;; saves the x and y of the block that is presssed to be used in change_picked if a different player is selected
   
   mov cx,[X_BLOCK_PUSHED]
   mov x_block_temp,cx
   mov cx,[Y_BLOCK_PUSHED]
   mov y_block_temp,cx
   ;pushes the player type so I can check if I need to capture 
   push [PLAYER_TYPE_PUSHED] 
   ;pushes the x,y of the player so I can check the legal moves of the player 
   push [X_BLOCK_PUSHED]
   push [Y_BLOCK_PUSHED]
   call check_legal_move_player
   ;; after checking the legal moves I want to draw them on the screen so I redraw the screen 
   call draw_screen_by_arr
   ;; after drawing the screen the x_block and y_block are ruined so i put the saved x and y bottom in them 
   mov cx,[X_BLOCK_PUSHED]
   mov x_block,cx
   mov cx,[Y_BLOCK_PUSHED]
   mov y_block,cx
   ;; push 2 (DARK_GRAY block) and change the block in the current x,y to DARK_GRAY so it is now free
   push DARK_GRAY_BLOCK1
   push [X_BLOCK_PUSHED]
   push [Y_BLOCK_PUSHED] 
   call change_num_in_arr  
   
   ;draws the player pressed / selected
   push [OFFSET_PLAYER_PRESSED]
   push [X_BLOCK_PUSHED]
   push [Y_BLOCK_PUSHED]
   call draw_different_blocks 
   
   pop cx
   pop ax
   pop bp
   ret 8
endp find_player_pressed


ADD_X_BLOCK EQU bp + 10
ADD_Y_BLOCK EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc capture_player 
    ;captures a player according to the given x,y
    ;adds and subbs from x_block and y_block according to whats pushed
    ;for example if capture on the bottom right we sub from x,1 and from y,1 and then we change the num in that block 
    ;to 2 (the player is captured and the block is now free)
    push bp
    mov bp,sp
    push ax
    push cx
    mov ax,2h
    int 33h
    ;change x,y
    mov ax, [ADD_X_BLOCK]
    add [X_BLOCK_PUSHED],ax
    mov ax, [ADD_Y_BLOCK]
    add [Y_BLOCK_PUSHED],ax 
    ;changes the block to 2 (DARK_GRAY = free block)
    push DARK_GRAY_BLOCK1 
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr 
    pop cx
    pop ax
    pop bp
    ret 8
endp capture_player


;prints strings
X_STR EQU bp + 8
Y_STR EQU bp + 6
OFFSET_STR EQU bp + 4
proc print_line
    push bp
    mov bp,sp
    push ax
    push bx
    push cx
    push dx
    ;prints the line according to the offset of the str that was pushed
    mov bh,0
    mov dh,[Y_STR]
    mov dl,[X_STR] 
    mov ah,2
    int 10h
    mov dx, [OFFSET_STR] ;prints string 
    mov ah, 9
    int 21h     
    
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 6 
    endp print_line


;draws different blocks according to the offset sent 
;draws the block according to the x,y sent (finds the pixel) and draws the block
;because all the graphics are blocks 25 pixels high and 25 pixels wide the width and height are the same in every possible drawing so
;there is no need to change them
OFFSET_BLOCK EQU bp + 8 
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc draw_different_blocks
    push bp
    mov bp,sp
    push si
    push di
    push cx 
    ;find pixel of block from x,y
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call get_pixel
    ;draw the block on the pixel 
    mov si, [OFFSET_BLOCK]
    mov di, image_pos_block
    mov cx, IMAGE_HEIGHT
repline:      
    push cx
    mov cx, IMAGE_WIDTH
    cld
    rep movsb
    add di, 320
    sub di, IMAGE_WIDTH
    pop cx
    loop repline    
    
    pop cx
    pop di
    pop si
    pop bp
    ret 6
endp draw_different_blocks 




;; draws the screen, goes into the 2d array that represents the screen and finds what it needs to draw
proc draw_screen_by_arr
    pusha
    mov x_block,0 
    mov y_block,0
    ;makes a loop of 8 for the rows 
    mov cx,8
loop_row:
    push cx    
   
    ;makes a loop of eight for the columns
    mov cx,8
loop_column:
    ;finds the number of the cur block according to the x,y
    push offset board
    push x_block
    push y_block
    call find_num_in_arr 
    ;if the num is 0 the block is gray
    cmp num_in_arr,0
    je draw_gray
    ;if the num is 11 the block is player2
    cmp num_in_arr,PLAYER2_BLOCK
    je draw_player2_on_board
    ;if the num is 2 the block is dark gray
    cmp num_in_arr,DARK_GRAY_BLOCK1
    je draw_dark_gray   
    ;if the num is 12 the block is player1
    cmp num_in_arr,PLAYER1_BLOCK
    je draw_player1_on_board
    ;if the num is 3 the block is green
    cmp num_in_arr,LEGAL_BLOCK
    je draw_legal_block 

draw_gray:    
    ;sends the offset of the GRAY block
    push offset gray_block
    push x_block
    push y_block  
    ;draw gray block
    call draw_different_blocks
    jmp done_drawing

draw_dark_gray:
    ;sends the offset of the dark gray block
    push offset dark_gray_block
    push x_block
    push y_block 
    ;draw dark gray block
    call draw_different_blocks
    jmp done_drawing


draw_player2_on_board:
    ;sends the offset of player2 
    push offset player2 
    push x_block
    push y_block 
    ;draw player2
    call draw_different_blocks
    jmp done_drawing
    
draw_player1_on_board:
    ;sends the offset of player1 
    push offset player1 
    push x_block
    push y_block 
    ;draw player 1
    call draw_different_blocks
    jmp done_drawing

draw_legal_block:
    ;sends the offset of the green block 
    push offset green_block
    push x_block
    push y_block                
    ;draw green block
    call draw_different_blocks  
    jmp done_drawing

done_drawing:
    ;after doing the block in the column we move forward 1
    add x_block,1
    loop loop_column 
    ;after finishing the column we move down 1 row and reset the x to 0 to start from the begining
    mov x_block,0
    add y_block,1
    pop cx
    loop loop_row
    
    popa
    ret 
endp  draw_screen_by_arr



proc reset_all
    pusha
    mov x_block,0
    mov y_block,0
    ;makes a loop of 8 for the row
    mov cx,8
loop_row_reset_all:
    push cx
    ;makes a loop of 8 for the column
    mov cx,8
loop_column_reset_all:
    ;finds the num according to the cur x,y
    push offset board2 
    push x_block
    push y_block
    call find_num_in_arr
    ;changes the num in board according to board2 
    xor ax,ax
    mov al,num_in_arr
    push ax
    push x_block
    push y_block
    call change_num_in_arr
    ;after doing the block in the column we move forward 1 
    add x_block,1
    loop loop_column_reset_all
    ;after finishing the column we move down 1 row and reset the x to 0 to start from the begining 
    mov x_block,0
    add y_block,1
    pop cx
    loop loop_row_reset_all        
    popa
    ret
endp reset_all 


;; finds all the blocks with 3 (potiential moves) and resets them
proc reset_screen
    pusha
    mov x_block,0 
    mov y_block,0 
    ;makes a loop of 8 for the row
    mov cx,8
loop_row_reset:
    push cx    
   
    ;makes a loop of 8 for the column
    mov cx,8
loop_column_reset:
    ;finds the num according to the cur x,y
    push offset board 
    push x_block
    push y_block
    call find_num_in_arr
    ;if the num = 3 we need to change it
    cmp num_in_arr,LEGAL_BLOCK
    je change_num 
    jmp done_changing
    
change_num:
    ;changes the block num from 3 to 2 (dark_gray block = free block)
    push DARK_GRAY_BLOCK1
    push x_block
    push y_block
    call change_num_in_arr
    jmp done_changing

done_changing:
    ;after doing the block in the column we move forward 1 
    add x_block,1
    loop loop_column_reset
    ;after finishing the column we move down 1 row and reset the x to 0 to start from the begining 
    mov x_block,0
    add y_block,1
    pop cx
    loop loop_row_reset
    popa
    ret 
endp reset_screen



;; sets the x_pos of the mouse in x_pos, sets the y_pos of the mouse in y_pos and sets what mouse button is pressed 
proc get_mouse_pos 
    push ax
    push cx
    push dx
    push bx
    mov ax, 3 
    int 33h 
    shr cx, 1
    mov x_pos,cx
    mov y_pos,dx 
    mov mouse,bx
    pop dx
    pop bx
    pop cx 
    pop ax
    ret 
endp get_mouse_pos



;; finds the x and y of the block in the 2d array
;; because every block is 25 pixel on 25 pixel 
;; I divide the x and y pos of the mouse by 25 and that is the x and y of the block in the array 
X_POS_PUSHED EQU bp + 6
Y_POS_PUSHED EQU bp + 4
proc get_block
    push bp
    mov bp,sp
    push ax
    push bx
    push dx
    
    xor ax,ax
    mov ax,[Y_POS_PUSHED]  
    mov bx,25 
    xor dx,dx
    div bx
    mov y_block,ax
    xor dx,dx
    xor ax,ax
    mov bx,25 
    sub [X_POS_PUSHED],60d
    mov ax,[X_POS_PUSHED]
    div bx
    mov x_block,ax
    
    pop dx
    pop bx
    pop ax
    pop bp
    ret 4
endp get_block


;; finds the pixel in the screen from the x and y of the block in the 2d array
;; mul the x of the block by 25 add 60 because the board starts from 60 and ends at 260
;; then adds to that the y of the block mul by  320 (amount of rows I need to go down)
;; the answer is the top left pixel of the block on the board according to the x,y of the block in the 2d array
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc get_pixel
    push bp
    mov bp,sp
    push ax
    push dx
    push bx
    push cx
    
    xor ax,ax 
    xor dx,dx
    mov ax,[X_BLOCK_PUSHED]
    mov bx,25
    mul bx
    add ax,dx
    add ax,60
    mov cx,ax
    xor ax,ax
    xor dx,dx
    mov ax,[Y_BLOCK_PUSHED]
    mul bx
    add ax,dx 
    mov bx,320d
    mul bx
    add ax,dx
    add ax,cx 
    
    mov image_pos_block,ax
    
    pop cx
    pop bx
    pop dx
    pop ax
    pop bp
    ret 4
endp get_pixel  



BOARD_TYPE_OFFSET EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
;; finds the num in the arr acording to the x and y of the block (y mul (arr height (8)) add the x of the block)
proc find_num_in_arr 
    push bp
    mov bp,sp
    push dx
    push ax
    push bx
    
    xor dx,dx
    mov ax,[Y_BLOCK_PUSHED]
    mov bx,8
    mul bx
    add ax,dx
    add ax,[X_BLOCK_PUSHED]
    mov bx,[BOARD_TYPE_OFFSET]
    add bx, ax
    xor ax,ax
    ;; puts the num from the arr into num_in_arr
    mov al,[bx]
    mov num_in_arr,al 
    pop bx
    pop ax
    pop dx
    pop bp
    ret 6
endp find_num_in_arr


NUM_TO_CHANGE_PUSHED EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4

;; changes the num in the arr acording to the x and y of the block (y mul (arr height (8)) add the x of the block)
proc change_num_in_arr
    push bp
    mov bp,sp
    push ax
    push bx
    push dx
    xor dx,dx
    mov ax,[Y_BLOCK_PUSHED]
    mov bx,8
    mul bx
    add ax,dx
    add ax,[X_BLOCK_PUSHED]
    lea bx,board
    add bx, ax
    xor ax,ax 
    ;; the num we want to change goes into the place in the arr
    mov al, [NUM_TO_CHANGE_PUSHED]
    mov [bx],al 
    pop dx
    pop bx
    pop ax
    pop bp
    ret 6
endp change_num_in_arr 


;; checks what the move we need to do is
;; gets the x,y of the pressed block in the arr and the new x,y (the place where the player moved)  
X_BLOCK_TEMP_PUSHED EQU bp + 10                    
Y_BLOCK_TEMP_PUSHED EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
proc check_what_to_do
    ;according to the found correct move a var is inserted with 1 which means that it is the correct move
    push bp
    mov bp,sp
    push ax
    ;reset the movment vars
    mov free_block_jump_top_right,0
    mov capture_top_right,0
    mov free_block_jump_bottom_right,0
    mov capture_bottom_right,0
    mov free_block_jump_top_left,0
    mov capture_top_left,0
    mov free_block_jump_bottom_left,0
    mov capture_bottom_left,0

    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    ;; if x_block cur is bigger than the original x_block then go right else go left
    mov ax,[X_BLOCK_TEMP_PUSHED]  
    cmp [X_BLOCK_PUSHED],ax
    jg check_right 
    jmp check_left
    
check_right: 
    ;; checks if the block is in the upper half or bottom
    mov ax,[Y_BLOCK_TEMP_PUSHED]
    cmp [Y_BLOCK_PUSHED],ax
    jg find_what_to_do_down_right
    jmp find_what_to_do_up_right
    
find_what_to_do_up_right: 
    ;; checks if the action is capture or jmp to a free block       
    
    sub [X_BLOCK_PUSHED],1
    mov ax,[X_BLOCK_TEMP_PUSHED] 
    cmp [X_BLOCK_PUSHED],ax    
    ;if the x_block is the same then we found the move
    je free_block_jump_top_right_move 
    sub [X_BLOCK_PUSHED],1
    cmp [X_BLOCK_PUSHED],ax
    ;if the x_block is the same then we found the move  
    je capture_top_right_move
    
find_what_to_do_down_right:
    ;; checks if the action is capture or jmp to a free block
    sub [X_BLOCK_PUSHED],1
    mov ax,[X_BLOCK_TEMP_PUSHED]  
    cmp [X_BLOCK_PUSHED],ax  
    ;if the x_block is the same then we found the move
    je free_block_jump_bottom_right_move
    sub [X_BLOCK_PUSHED],1
    cmp [X_BLOCK_PUSHED],ax
    ;if the x_block is the same then we found the move
    je capture_bottom_right_move
       
    
free_block_jump_top_right_move:
    mov free_block_jump_top_right,1
    jmp found_what_to_do
    
    
capture_top_right_move:
    mov capture_top_right,1
    jmp found_what_to_do 
       
free_block_jump_bottom_right_move:
    mov free_block_jump_bottom_right,1
    jmp found_what_to_do     
    
capture_bottom_right_move:
    mov capture_bottom_right,1
    jmp found_what_to_do    


check_left:
    ;; checks if the block is in the upper half or bottom   
    mov ax,[Y_BLOCK_TEMP_PUSHED]
    cmp [Y_BLOCK_PUSHED],ax
    jg find_what_to_do_down_left
    jmp find_what_to_do_up_left
    

find_what_to_do_up_left:
    ;; checks if the action is capture or jmp to a free block 
    add [X_BLOCK_PUSHED],1
    mov ax,[X_BLOCK_TEMP_PUSHED]  
    cmp [X_BLOCK_PUSHED],ax 
    ;if the x_block is the same then we found the move
    je free_block_jump_top_left_move
    add [X_BLOCK_PUSHED],1 
    cmp [X_BLOCK_PUSHED],ax
    ;if the x_block is the same then we found the move
    je capture_top_left_move
    
find_what_to_do_down_left:
    ;; checks if the action is capture or jmp to a free block
    add [X_BLOCK_PUSHED],1
    mov ax,[X_BLOCK_TEMP_PUSHED] 
    cmp [X_BLOCK_PUSHED],ax  
    ;if the x_block is the same then we found the move
    je free_block_jump_bottom_left_move
    add [X_BLOCK_PUSHED],1  
    cmp [X_BLOCK_PUSHED],ax 
    ;if the x_block is the same then we found the move
    je capture_bottom_left_move      

free_block_jump_top_left_move:
    mov free_block_jump_top_left,1
    jmp found_what_to_do
    
capture_top_left_move:
    mov capture_top_left,1
    jmp found_what_to_do

free_block_jump_bottom_left_move:
    mov free_block_jump_bottom_left,1
    jmp found_what_to_do

capture_bottom_left_move:
    mov capture_bottom_left,1
    jmp found_what_to_do 
    
;; leave with the selected block x and y        
found_what_to_do: 
    pop y_block
    pop x_block     
    pop ax
    pop bp
    ret 8
endp check_what_to_do




PLAYER_TYPE_PUSHED2 EQU bp + 8
X_BLOCK_PUSHED EQU bp + 6
Y_BLOCK_PUSHED EQU bp + 4
;; checks the legal moves of player     
proc check_legal_move_player
    push bp 
    mov bp,sp
    push ax
    
    ;; saves the original x and y   
    push x_block
    push y_block
    jmp bottom_right_check
    ;; checks if the bottom right is on the right wall or on the bottom of the board    
bottom_right_check:
    
    cmp [X_BLOCK_PUSHED],7
    je bottom_left_check
    cmp [Y_BLOCK_PUSHED],7
    je check_top
    ;; goes one diagonal bottom right    
    add [X_BLOCK_PUSHED],1
    add [Y_BLOCK_PUSHED],1
    ;; checks whats there
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr
    
    ;checks if the num is the other player if so I need to capture
    mov ax,[PLAYER_TYPE_PUSHED2]
    cmp num_in_arr,al
    je legal_capture_right_player
    ;; if the block isnt free(=2) then check left else mark as a legal block
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne bottom_left_check
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr
   
    jmp bottom_left_check

    ;; checks the legal capture of a player    
legal_capture_right_player: 
    ;; checks if the bottom right is on the right wall or on the bottom of the board    
    cmp [X_BLOCK_PUSHED],7
    je bottom_left_check
    cmp [Y_BLOCK_PUSHED],7
    je bottom_left_check 
    ;; goes one diagonal bottom right 
    add [X_BLOCK_PUSHED],1
    add [Y_BLOCK_PUSHED],1 
    ;; if the block = 2 the space is free
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr
    
    cmp num_in_arr,DARK_GRAY_BLOCK1
    ;; if the block doesnt = 2 we check left else we mark the square as a legal move
    jne bottom_left_check
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    
    call change_num_in_arr
    
    jmp bottom_left_check

    
bottom_left_check:
    ;; resets the x and y in the memory to the original x,y
    pop [Y_BLOCK_PUSHED]
    pop [X_BLOCK_PUSHED]
    ;saves the original x,y
    push x_block
    push y_block
    ;; checks if the x is on the left wall 
    cmp [X_BLOCK_PUSHED],0
    je check_top
    ;; checks if the y is on the bottom of the board
    cmp [Y_BLOCK_PUSHED],7 
    je check_top
    ;; goes one diagonal bottom left 
    sub [X_BLOCK_PUSHED],1
    add [Y_BLOCK_PUSHED],1
    ;; if the block = 12 the space is a player
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]   
    call find_num_in_arr
    
    ;checks if the num is the other player if so I need to capture
    mov ax,[PLAYER_TYPE_PUSHED2]
    cmp num_in_arr,al
    je legal_capture_left_player 
    ;; if the block isnt free(=2) then check top right else mark as a legal block
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne check_top
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr
    
    jmp check_top  
    
     ;; checks the legal capture of a player  
legal_capture_left_player:
    ;; checks if the x is on the left wall and if so we cant capture
    cmp [X_BLOCK_PUSHED],0
    je check_top
    ;; checks if the y is on the bottom of the board and if so we cant capture
    cmp [Y_BLOCK_PUSHED],7
    je check_top
    ;; goes one diagonal bottom left 
    sub [X_BLOCK_PUSHED],1
    add [Y_BLOCK_PUSHED],1
    ;; checks if the num = 2 (the block is free) 
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]  
    call find_num_in_arr 
    ;if the block is free I can sign it as a legal block
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne check_top 
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr 
    
    jmp check_top
     
check_top:
    ;; resets the x and y in the memory to the original x,y
    pop [Y_BLOCK_PUSHED]
    pop [X_BLOCK_PUSHED]
    ;saves the original x,y
    push x_block
    push y_block
    jmp check_top_right

check_top_right:
    ;; checks if the player is on the right wall 
    cmp [X_BLOCK_PUSHED],7
    je check_top_left
    ;; checks if the player is on the top row
    cmp [Y_BLOCK_PUSHED],0
    je done_checking
    ;; goes one diagonal top right           
    add [X_BLOCK_PUSHED],1
    sub [Y_BLOCK_PUSHED],1
    ;; checks whats on the block
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]           
    call find_num_in_arr
    ;checks if the num is the other player if so I need to capture
    mov ax,[PLAYER_TYPE_PUSHED2] 
    cmp num_in_arr,al
    je legal_capture_right_top_player  
    ;; if the block isnt free(=2) then check top left else mark as a legal block
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne check_top_left
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call change_num_in_arr 
    
    jmp check_top_left               
    
    ;; checks the legal capture of a player              
legal_capture_right_top_player:
    ;; checks if the player is on the right wall 
    cmp [X_BLOCK_PUSHED],7
    je check_top_left
    ;; checks if the player is on the top row
    cmp [Y_BLOCK_PUSHED],0
    je check_top_left
    ;; goes one diagonal top right           
    add [X_BLOCK_PUSHED],1
    sub [Y_BLOCK_PUSHED],1
    ;; checks if the block is free
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr
    
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne check_top_left 
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
   
    call change_num_in_arr 
    
    jmp check_top_left

                
check_top_left:
    ;; resets the x and y in the memory to the original x,y
    pop [Y_BLOCK_PUSHED]
    pop [X_BLOCK_PUSHED]
    ;saves the original x,y
    push x_block
    push y_block
    ;; checks if the player is on the left wall 
    cmp [X_BLOCK_PUSHED],0
    je done_checking
    ;; checks if the player is on the top row
    cmp [Y_BLOCK_PUSHED],0
    je done_checking
    ;; goes one diagonal top left
    sub [X_BLOCK_PUSHED],1
    sub [Y_BLOCK_PUSHED],1
    ;; checks whats on the block 
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr  
    ;checks if the num is the other player if so I need to capture
    mov ax,[PLAYER_TYPE_PUSHED2]
    cmp num_in_arr,al
    je legal_capture_left_top_player 
     ;; if the block isnt free(=2) then done checking else mark as a legal block
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne done_checking 
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
   
    call change_num_in_arr 
    
    jmp done_checking  

legal_capture_left_top_player:
    ;; checks if the player is on the left wall 
    cmp [X_BLOCK_PUSHED],0 
    je done_checking 
    ;; checks if the player is on the top row 
    cmp [Y_BLOCK_PUSHED],0
    je done_checking
    ;; goes one diagonal top left
    sub [X_BLOCK_PUSHED],1
    sub [Y_BLOCK_PUSHED],1
    ;; checks if the block is free
    push offset board
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]
    call find_num_in_arr
    cmp num_in_arr,DARK_GRAY_BLOCK1
    jne done_checking  
    ;if the block is free I can sign it as a legal block
    push LEGAL_BLOCK
    push [X_BLOCK_PUSHED]
    push [Y_BLOCK_PUSHED]  
    call change_num_in_arr 
    
    jmp done_checking 

    ;; resets the x and y to the original
done_checking:
    pop y_block
    pop x_block
            
    pop ax
    pop bp
    ret 6
endp check_legal_move_player

end start ; set entry point and stop the assembler.