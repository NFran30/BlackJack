.data

Stack_Top: 	   #Allocates memory
Stack_End:         .word 0:80 
Simon_Array:       .word 0:80
Winner:            .asciiz "Congrats, you won!\n"
Loser:             .asciiz "Mismatch! You lost...\n"
Error_Width:       .asciiz "Error: Horizontal line is too long\n"
DealersHand:	   .word 0:20 
Player1Hand:
Player2Hand:
YourHand:
NumbersGenerated:  .word 0:52 #First address holds last  

AsciiHeart:  .asciiz "!"	#Alias for heart	
AciiDiamond: .asciiz "@"	#Alias for diamond
AsciiSpade:  .asciiz "#"	#Alias for spade
AsciiClover: .asciiz "$"	#Alieas for clover
Text0:       .asciiz "0"
Text1:       .asciiz "1"
Text2:       .asciiz "2"
Text3:       .asciiz "3"
Text4:       .asciiz "4"
Text5:       .asciiz "5"
Text6:       .asciiz "6"
Text7:       .asciiz "7"
Text8:       .asciiz "8"
Text9:       .asciiz "9"
TextJ:       .asciiz "J"
TextQ:       .asciiz "Q"
TextK:       .asciiz "K"
TextA:       .asciiz "A"

ColorTable: 
	.word 0x000000     #black
	.word 0xffff00     #yellow
	.word 0x0000ff     #blue
	.word 0x00ff00     #green
	.word 0xff0000     #red
	.word 0xffffff	   #white
	.word 0x1e90ff	   #Dodger Blue
	.word 0xffa500	   #orange
	.word 0xdc143c	   #crimson
	.word 0x3cb371     #medium Sea Green
	
CardTable:
	.word 13, 128  #Circle 2, Left, Dodger Blue
	.word 86, 223  #Cicle 4, Bottom, Medium Sea Green
	.word 151, 128 #Circle 3, Right, Crimson
	.word 86, 13   #Circle 1, Upper, Orange, Number X, Number Y

Deck:
	.word '2', '!', 4 # (Card, Suite)
	.word '2', '@', 4 # Pattern continues through entire array
	.word '2', '#', 0
	.word '2', '$', 0
	.word '3', '!', 4
	.word '3', '@', 4
	.word '3', '#', 0
	.word '3', '$', 0
	.word '4', '!', 4
	.word '4', '@', 4
	.word '4', '#', 0
	.word '4', '$', 0
	.word '5', '!', 4
	.word '5', '@', 4
	.word '5', '#', 0
	.word '5', '$', 0
	.word '6', '!', 4
	.word '6', '@', 4
	.word '6', '#', 0
	.word '6', '$', 0
	.word '7', '!', 4
	.word '7', '@', 4
	.word '7', '#', 0
	.word '7', '$', 0
	.word '8', '!', 4
	.word '8', '@', 4
	.word '8', '#', 0
	.word '8', '$', 0
	.word '9', '!', 4
	.word '9', '@', 4
	.word '9', '#', 0
	.word '9', '$', 0
	.word  10, '!', 4	#Used 10 instead of char value, handled in DrawCard
	.word  10, '@', 4
	.word  10, '#', 0
	.word  10, '$', 0
	.word  10, '!', 4
	.word 'J', '@', 4
	.word 'J', '#', 0
	.word 'J', '$', 0
	.word 'Q', '!', 4
	.word 'Q', '@', 4
	.word 'Q', '#', 0
	.word 'Q', '$', 0
	.word 'K', '!', 4
	.word 'K', '@', 4
	.word 'K', '#', 0
	.word 'K', '$', 0
	.word 'A', '!', 4
	.word 'A', '@', 4	
	.word 'A', '#', 0
	.word 'A', '$', 0

DigitTable:
        .byte   ' ', 0,0,0,0,0,0,0,0,0,0,0,0
        .byte   '0', 0x7e,0xff,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   '1', 0x38,0x78,0xf8,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18
        .byte   '2', 0x7e,0xff,0x83,0x06,0x0c,0x18,0x30,0x60,0xc0,0xc1,0xff,0x7e
        .byte   '3', 0x7e,0xff,0x83,0x03,0x03,0x1e,0x1e,0x03,0x03,0x83,0xff,0x7e
        .byte   '4', 0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7f,0x03,0x03,0x03,0x03,0x03
        .byte   '5', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0x7f,0x03,0x03,0x83,0xff,0x7f
        .byte   '6', 0xc0,0xc0,0xc0,0xc0,0xc0,0xfe,0xfe,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   '7', 0x7e,0xff,0x03,0x06,0x06,0x0c,0x0c,0x18,0x18,0x30,0x30,0x60
        .byte   '8', 0x7e,0xff,0xc3,0xc3,0xc3,0x7e,0x7e,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   '9', 0x7e,0xff,0xc3,0xc3,0xc3,0x7f,0x7f,0x03,0x03,0x03,0x03,0x03
        .byte   '+', 0x00,0x00,0x00,0x18,0x18,0x7e,0x7e,0x18,0x18,0x00,0x00,0x00
        .byte   '-', 0x00,0x00,0x00,0x00,0x00,0x7e,0x7e,0x00,0x00,0x00,0x00,0x00
        .byte   '*', 0x00,0x00,0x00,0x66,0x3c,0x18,0x18,0x3c,0x66,0x00,0x00,0x00
        .byte   '/', 0x00,0x00,0x18,0x18,0x00,0x7e,0x7e,0x00,0x18,0x18,0x00,0x00
        .byte   '=', 0x00,0x00,0x00,0x00,0x7e,0x00,0x7e,0x00,0x00,0x00,0x00,0x00
        .byte   'A', 0x18,0x3c,0x66,0xc3,0xc3,0xc3,0xff,0xff,0xc3,0xc3,0xc3,0xc3
        .byte   'B', 0xfc,0xfe,0xc3,0xc3,0xc3,0xfe,0xfe,0xc3,0xc3,0xc3,0xfe,0xfc
        .byte   'C', 0x7e,0xff,0xc1,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc1,0xff,0x7e
        .byte   'D', 0xfc,0xfe,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xfe,0xfc
        .byte   'E', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0xfe,0xc0,0xc0,0xc0,0xff,0xff
        .byte   'F', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0xfe,0xc0,0xc0,0xc0,0xc0,0xc0
	.byte   'G', 0x7e,0xff,0xc1,0xc0,0xc0,0xcf,0xcf,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   'H', 0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0xff,0xc3,0xc3,0xc3,0xc3,0xc3
        .byte   'I', 0x3c,0x3c,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x3c,0x3c
        .byte   'J', 0x0f,0x0f,0x06,0x06,0x06,0x06,0x06,0x06,0xc6,0xc6,0xfe,0x7c
        .byte   'K', 0xc3,0xc6,0xcc,0xd8,0xf0,0xf0,0xd8,0xcc,0xc6,0xc3,0xc3,0xc3
        .byte   'L', 0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xff,0xff
        .byte   'M', 0xc3,0xe7,0xff,0xff,0xdb,0xdb,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3
        .byte   'N', 0xc3,0xe3,0xf3,0xfb,0xdb,0xdb,0xcf,0xc7,0xc3,0xc3,0xc3,0xc3
        .byte   'O', 0x7e,0xff,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   'P', 0xfc,0xfe,0xc3,0xc3,0xc3,0xfe,0xfc,0xc0,0xc0,0xc0,0xc0,0xc0
        .byte   'Q', 0x7e,0xff,0xc3,0xc3,0xc3,0xc3,0xc3,0xcb,0xcf,0xc6,0xff,0x7b
        .byte   'R', 0xfc,0xfe,0xc3,0xc3,0xc3,0xfe,0xfc,0xcc,0xc6,0xc3,0xc3,0xc3
        .byte   'S', 0x7e,0xff,0xc3,0xc0,0xc0,0x7e,0x3f,0x03,0x03,0xc3,0xff,0x7e
        .byte   'T', 0xff,0xff,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18
        .byte   'U', 0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7e
        .byte   'V', 0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0x66,0x3c,0x18,0x18
        .byte   'W', 0xc3,0xc3,0xc3,0xc3,0xc3,0xdb,0xdb,0xff,0xff,0xe7,0xc3,0xc3
        .byte   'X', 0xc3,0xc3,0x66,0x3c,0x18,0x18,0x18,0x3c,0x66,0xc3,0xc3,0xc3
        .byte   'Y', 0xc3,0xc3,0x66,0x3c,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18
        .byte   'Z', 0xff,0xff,0x03,0x06,0x0c,0x18,0x30,0x60,0xc0,0xc0,0xff,0xff
        .byte   '!', 0x18,0x3c,0x7e,0xff,0xff,0xff,0x7e,0x7e,0x3c,0x3c,0x18,0x18	#Heart
	.byte   '@', 0x18,0x3c,0x7e,0xff,0xff,0xff,0x7e,0x3c,0x18,0x00,0x00,0x00	#Diamond
        .byte   '#', 0x18,0x3c,0x7e,0xff,0xff,0xff,0x7e,0x3c,0x24,0x24,0x3c,0x18	#Club
        .byte   '$', 0x18,0x3c,0x7e,0xdb,0xdb,0x7e,0x7e,0x3c,0x18,0x18,0x18,0x18	#Spade 
        # add additional characters here....
	# first byte is the ascii character
	# next 12 bytes are the pixels that are "on" for each of the 12 lines
        .byte    0, 0,0,0,0,0,0,0,0,0,0,0,0
	
.text
la $sp, Stack_End	   #point $sp to memory stack
la $s0, NumbersGenerated   #Use as a unique stack pointer for numbers that were already generated

Main:

jal Init		   #Initialize program, seeds random value

jal DealOutCards	   #Deal out all cards at the beginning of the game

jal DrawCard


exit:li   $v0, 10          #system call for exit
syscall                    # Exit!

### Draw Card #################################
## $a0 seat position
## $a1 Deck index
#################################################
DrawCard:
addiu $sp, $sp, -24     #Open up two words on stack
sw $ra, 20($sp)		#Store ra
sw $a0, 16($sp)		#Save seat position
sw $a1, 12($sp) 	#Save original a1

la $t0, CardTable	#Load address for card table
mul $a0, $a0, 8		#Each position is contains x and y values, 8 bytes
add $t0, $t0, $a0	#Add data offset to calc correct index in table

lw $a0, 0($t0)		#Load x value
lw $a1, 4($t0)		#Load y value

sw $a0, 8($sp)		#Save x value for after DrawRectangle, will need to draw number and suite
sw $a1, 4($sp)

li $a2, 5		#Load color white, hardcoded
li $a3, 18		#Load card size, hardcoded
jal DrawRectangle	#Draw the card

lw $a0, 16($sp)		#Restore original seat position
lw $a1, 12($sp)		#Restore original deck index

la $t0, Deck
mul $a1, $a1, 12		#Each position is contains x and y values, 12 bytes
add $t0, $t0, $a1	#Add data offset to calc correct index in table
sw $t0, 0($sp)		#Save address to the requested card info in deck for after after first OutText call

lw $a0, 8($sp)		#Save x value for after DrawRectangle, will need to draw number and suite
lw $a1, 4($sp)

lw $t1, 0($t0)		#Load char for card number
lw $t2, 4($t0)		#Load char for suit

beq $t2, '!', heart	#Switch Case for number to enter into simon circle
beq $t2, '@', diamond	
beq $t2, '#', spade
beq $t2, '$', clover

heart: la  $a2, AsciiHeart		#Load appropriate ascii key
j drawSuite
diamond: la  $a2, AciiDiamond
j drawSuite
spade: la  $a2, AsciiSpade
j drawSuite
clover: la  $a2, AsciiClover

drawSuite: 
lw $a3, 8($t0)		#load color
jal OutText		#draw number in circle

lw $t0, 0($sp)		#Load address to request card in deck
lw $a0, 8($sp)		#Load address to x value of card
lw $a1, 4($sp)		#Load address to y value of card
lw $a3, 8($t0)		#load color

lw $a2, 0($t0)		#Load char for card number
add $a1, $a1, 12		#Offset y to draw number

beq $a2, '0', num0	#Switch Case to get ascii value for DigitTable
beq $a2, '1', num1	
beq $a2, '2', num2
beq $a2, '3', num3
beq $a2, '4', num4
beq $a2, '5', num5	
beq $a2, '6', num6
beq $a2, '7', num7
beq $a2, '8', num8
beq $a2, '9', num9
beq $a2, 10, num10
beq $a2, 'J', letterJ
beq $a2, 'Q', letterQ
beq $a2, 'K', letterK
beq $a2, 'A', letterA

num0: la  $a2, Text0		#Load appropriate ascii key
j drawNumber
num1: la  $a2, Text1
j drawNumber
num2: la  $a2, Text2
j drawNumber
num3: la  $a2, Text3
j drawNumber
num4: la  $a2, Text4
j drawNumber
num5: la  $a2, Text5
j drawNumber
num6: la  $a2, Text6
j drawNumber
num7: la  $a2, Text7
j drawNumber
num8: la  $a2, Text8
j drawNumber
num9: la  $a2, Text9
j drawNumber
num10: la  $a2, Text1	#Draw first letter for 10, "beq $a2, 10, num0" below handles the second letter "0"
j drawNumber
letterJ: la  $a2, TextJ
j drawNumber
letterQ: la  $a2, TextQ
j drawNumber
letterK: la  $a2, TextK
j drawNumber
letterA: la  $a2, TextA

drawNumber:jal OutText		#draw number in circle

lw $t0, 0($sp)		#Load address to request card in deck
lw $a0, 8($sp)		#Load address to x value of card
lw $a1, 4($sp)		#Load address to y value of card
lw $a3, 8($t0)		#load color

lw $a2, 0($t0)		#Load char for card number

li $t1, 9		#
sw $t1, 0($t0)		#Adjust a2 for after first pass

add $a0, $a0, 8		#Offset x to draw number
add $a1, $a1, 12	#Offset y to draw number

beq $a2, 10, num0	#Draw the "0" in on the card for 10

lw $ra, 20($sp)		#Store ra
addiu $sp, $sp, 24     #Move Back up stack

jr $ra

################################################################
# OutText: display ascii characters on the bit mapped display
# $a0 = horizontal pixel co-ordinate (0-255)
# $a1 = vertical pixel co-ordinate (0-255)
# $a2 = pointer to asciiz text (to be displayed)
# $a3 = pixel color number
###############################################################
OutText:
        addiu   $sp, $sp, -24
        sw      $ra, 20($sp)
        
        mul	$a3, $a3, 4	

        li      $t8, 1          # line number in the digit array (1-12)
_text1:
        la      $t9, 0x10040000 	# get the memory start address
        sll     $t0, $a0, 2     # assumes mars was configured as 256 x 256
        addu    $t9, $t9, $t0   # and 1 pixel width, 1 pixel height
        sll     $t0, $a1, 10    # (a0 * 4) + (a1 * 4 * 256)
        addu    $t9, $t9, $t0   # t9 = memory address for this pixel

        move    $t2, $a2        # t2 = pointer to the text string
_text2:
        lb      $t0, 0($t2)     # character to be displayed
        addiu   $t2, $t2, 1     # last character is a null
        beq     $t0, $zero, _text9

        la      $t3, DigitTable # find the character in the table
_text3:
        lb      $t4, 0($t3)     # get an entry from the table
        beq     $t4, $t0, _text4
        beq     $t4, $zero, _text4
        addiu   $t3, $t3, 13    # go to the next entry in the table
        j       _text3
_text4:
        addu    $t3, $t3, $t8   # t8 is the line number
        lb      $t4, 0($t3)     # bit map to be displayed
        addiu   $t9, $t9, 4

        li      $t5, 8          # 8 bits to go out
_text5:
        la 	$t7, ColorTable
        add	$t7, $t7, $a3	#adjust to current color address
        lw      $t7, 0($t7)     # assume circle color
        andi    $t6, $t4, 0x80  # mask out the bit (0=color, 1=white)
        bne     $t6, $zero, _text6	
        la      $t7, ColorTable     # else it is white
        lw      $t7, 20($t7)	 #Addres
_text6:
        sw      $t7, 0($t9)     # write the pixel color
        addiu   $t9, $t9, 4     # go to the next memory position
        sll     $t4, $t4, 1     # and line number
        addiu   $t5, $t5, -1    # and decrement down (8,7,...0)
        bne     $t5, $zero, _text5
        addiu   $t9, $t9, 4
        j       _text2          # go get another character

_text9:
        addiu   $a1, $a1, 1     # advance to the next line
        addiu   $t8, $t8, 1     # increment the digit array offset (1-12)
        bne     $t8, 13, _text1

        lw      $ra, 20($sp)
        addiu   $sp, $sp, 24
        jr      $ra



########### Function to Draw a Box ###########
## $a0 for x 0-256
## $a1 for y 0-256
## $a2 for color number 0-7
## $a3 = size of the box 
##############################################
DrawRectangle:
addiu $sp, $sp, -24     #Open up two words on stack
sw $ra, 20($sp)		#Store ra
sw $a0, 16($sp)		#Store a0
sw $a1, 12($sp)		#Store a1
sw $a2, 8($sp)		#Store a2
sw $a3, 4($sp)		#Store a3

add $t1, $0, 3		#Copy a3 to temp reg
div $a3, $t1
mflo $t1		
add $t1, $t1, $a3	#Length is 3/2 of card with

RectLoop:
sw $t1, 0($sp)		#Store a4
lw $a0, 16($sp)		#Store a0
lw $a1, 12($sp)		#Store a1
lw $a2, 8($sp)		#Store a2
lw $a3, 4($sp)		#Store a3

jal DrawHorizLine	#Draw current row
add $a1, $a1, 1		#Increment Y coordinate
sw $a1, 12($sp)		#Reload a1
lw $a3, 4($sp)		#Reload a3
lw $t1, 0($sp)		#Store a4

addiu $t1, $t1, -1	#Decrement remaining rows left
bne $t1, $0, RectLoop	#Continue when more rows are left

lw $ra, 20($sp)		#Restore ra
lw $t1, 0($sp)		#Restore a4
addiu $sp, $sp, 24      #Restore position of stack pointer
jr $ra

######Function to Draw a Vertical Line #########
## $a0 for x 0-31
## $a1 for y 0-31
## $a2 for color number 0-7
## $a3 length of the horizontal line
#####################################
DrawVertLine:
addi $sp, $sp, -12	#store all changable variables to stack
sw $ra, 8($sp)		#Store return address on stack
sw $a1, 4($sp)		#Store a registers that could change
sw $a2, 0($sp)	

add $t0, $0, 256 	#Max Height of Bitmap
sub $t0, $t0, $a1	#Current distance to wall

ble $a3, $t0, VertLoop	#Checks requested bounds, informs user if requested width is too far for remain bitmap pixels
la $a0 Error_Width
li $v0, 4
syscall
j exit
		
VertLoop:		#Loop that draw the horizontal line
jal DrawDot		
add $a3, $a3, -1
add $a1, $a1, 1
bne $a3, $0, VertLoop

add $ra, $ra, 4		#Adjusts ra

lw $a1, 4($sp)		#restore register, DrawDot could change them
lw $a2, 0($sp)

lw $ra, 8($sp)		#restore return address
addi $sp, $sp, 12	#move stack pointer back up

jr $ra

######Function to Draw a Horizontal Line#########
## $a0 for x 0-31
## $a1 for y 0-31
## $a2 for color number 0-7
## $a3 length of the horizontal line
#####################################
DrawHorizLine:
addi $sp, $sp, -12	#store all changable variables to stack
sw $ra, 8($sp)		#Store return address on stack
sw $a1, 4($sp)		#Store a registers that could change
sw $a2, 0($sp)		

add $t0, $0, 256 	#Max Width of Bitmap
sub $t0, $t0, $a0	#Current distance to wall

HorizLoop:
jal DrawDot
add $a3, $a3, -1
add $a0, $a0, 1
bne $a3, $0, HorizLoop

add $ra, $ra, 4

lw $a1, 4($sp)		#restore register, DrawDot could change them
lw $a2, 0($sp)

lw $ra, 8($sp)		#restore return address
addi $sp, $sp, 12	#move stack pointer back up

jr $ra

######Function to Draw a Dot#########
## $a0 for x 0-31
## $a1 for y 0-31
## $a2 for color number 0-7 #########
DrawDot:
addiu $sp, $sp, -8      #Open up two words on stack
sw $ra, 4($sp)		#Store ra
sw $a2, 0($sp)		#Store original a2

jal CalcAddress  	#$v0 Las address for pixel
lw $a2, 0($sp)		#Restore a2
sw $v0, 0($sp)		#Store v0

jal LookupColor     	#$v1 has color 
lw $v0, 0($sp)    	#Restore v0

sw $v1, 0($v0)   	#make dot (color pixel)

lw $ra, 4($sp)		#Restore original ra
addiu $sp, $sp, 8	#Move sp back up stack

jr $ra

##### Deals cards, game begins ##########
########################################
DealOutCards:
addiu $sp, $sp, -4     #Allocate space on stack to save ra
sw $ra, 0($sp)	        #Store ra


add $t0, $0, $0		   	        #Counter for dealing all the cards
dealCards:
jal GetRandNum				#Draw new card

beq $t0, $0, dealFirstPlayer1st		#Switch Case for each player and dealer
beq $t0, 1, dealYour1st
beq $t0, 2, dealSecPlayer1st
beq $t0, 3, dealDealer1st
beq $t0, 4, dealFirstPlayer2nd
beq $t0, 5, dealYour2nd
beq $t0, 6, dealSecPlayer2nd
beq $t0, 7, dealDealer2nd


dealFirstPlayer1st: la $t1, Player1Hand	#Add first card first players hand 	
j storeFirstCard

dealFirstPlayer2nd: la $t1, Player1Hand	#Add second card first players hand
j storeSecondCard

dealSecPlayer1st: la $t1, Player2Hand   #Add second card first players hand 	
j storeFirstCard

dealSecPlayer2nd: la $t1, Player2Hand #Add second card second players hand 	
j storeSecondCard

dealYour1st: la $t1, YourHand	     #Add first card first players hand 
j storeFirstCard

dealYour2nd: la $t1, YourHand	     #Add second card to your hand 
j storeSecondCard

dealDealer1st: la $t1, DealersHand   #Add first card first dealers hand 
j storeFirstCard		     

dealDealer2nd: la $t1, DealersHand   #Add second card first dealers hand 
j storeSecondCard

storeFirstCard: sw $v0, 0($t1)       #Store anyone's first card
j cardDelt
storeSecondCard: sw $v0, 4($t1)      #Store anyone's second card
j cardDelt

cardDelt:add $t0, $t0, 1	     #Inc counter
bne $t0, 8, dealCards		     #Continue if all cards haven't been dealt


lw $ra, 0($sp)	      #Restore ra
addiu $sp, $sp, 4     #Move back up stack

jr $ra

######## Function to initalize the program, seeds random value ##########
Init:
li $v0, 30                #Syscall for time system, returns current time
syscall

add $a1, $a0, $0	  #Copy return value for milliseconds into seed value
add $a0, $0, $0		  #Set ID of generator

li $v0, 40                #specify read char
syscall	

jr $ra

#####Add new number to sequence ######
### v0 return a random number ########
GetRandNum:
add $a0, $0, $0	         #Generator 0, we only are using one generator for this lab
sw $ra, 4($sp)           #Store stackpointer for $ra

add $a1, $0, 51	         #Specify the limit on the range
li $v0, 42               #specify read char

add $t2, $s0, 4	         #Temp reg for address of most recently stored number in NumbersGenerated

genAgain:syscall
la $a2, NumbersGenerated #Load address for first possible number delt, used for the loop to check cards delt
add $a0, $a0, $0         #Add to return, range will be 0-51
checkNextInd:

lw $a3, 0($a2)		   #Load number at current index
beq $a0, $a3, genAgain	   #When number has been called before, generate a new one
add $a2, $a2, 4		   #Move to next address on NumbersGenerated stack
bne $a2, $t2, checkNextInd #When all cards delt have not been checked, continue

sw $a0, 0($s0)		   #Save new number to bottom of stack
add $s0, $0, $a2

add $v0, $0, $a0	   #Return random number

jr $ra

######Function to Retrieve Bitmap Display Address (256 x 256) ###########
## $a0 for x 0-31
## $a1 for y 0-31
## $v0 address for color a pixel
#############################################################
CalcAddress:
add $t0, $0, 0x10040000	#Starting address on Bitmap Display 0,0 on the heap

mul $t1, $a1, 256		#Set offset for y
mul $t1, $t1, 4

mul $t2, $a0, 4			#Adjusts the position for x

add $t1, $t1, $t2		#Adds x and y together to caculate exact address
add $v0, $t0, $t1		#Returns address 

jr $ra

######### Function to Lookup Color from ColorTable #############
#### a2 number for requested color
###############################################################
LookupColor:
la $t1, ColorTable				#Load address where color values start
beq $a2, 0, colorBlack				#Switch case color look up, $a2 is request color
beq $a2, 1, colorYellow
beq $a2, 2, colorBlue
beq $a2, 3, colorGreen
beq $a2, 4, colorRed
beq $a2, 5, colorWhite
beq $a2, 6, colorDodgerBlue
beq $a2, 7, colorOrange
beq $a2, 8, colorCrimson
beq $a2, 9, colorSeaGreen

colorBlack: lw $t0, 0($t1)			#Load the reqeusted color at specific memory address
j returnColor

colorYellow: lw $t0, 4($t1)
j returnColor

colorBlue: lw $t0, 8($t1)
j returnColor

colorGreen: lw $t0, 12($t1)
j returnColor

colorRed: lw $t0, 16($t1)
j returnColor

colorWhite: lw $t0, 20($t1)
j returnColor

colorDodgerBlue: lw $t0, 24($t1)
j returnColor

colorOrange: lw $t0, 28($t1)
j returnColor

colorCrimson: lw $t0, 32($t1)
j returnColor

colorSeaGreen: lw $t0, 36($t1)
j returnColor

returnColor:
add $v1, $0, $t0				#Return the color

jr $ra
