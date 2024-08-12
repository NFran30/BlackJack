.data

Stack_Top: 	   #Allocates memory
Stack_End:         .word 0:80 
Simon_Array:       .word 0:80
Winner:            .asciiz "Congrats, you won!\n"
Loser:             .asciiz "Mismatch! You lost...\n"
Error_Width:       .asciiz "Error: Horizontal line is too long\n"
HitOrStay:         .asciiz "Type 1 if you would like to hit, type 0 if you would like to stay..."
DealersHand:	   .word 0:20 
Player1Hand:	   .word 0:20 
Player2Hand:	   .word 0:20 
MyHand:	   	   .word 0:20 
NumbersGenerated:  .word 0:52 #First address holds last  

HorizDividerLines:
	.word 32, 32, 5, 192, 0	 #First horizontal line, right to left (x, y, ColorTable#, length, 0 = Pos Direction)
	.word 224, 32, 5, 192, 1 #First horizontal line, left to right (x, y, ColorTable#, -length, 1 = Neg Direction) 

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
	.word 3, 116  #Circle 2, Left, Dodger Blue
	.word 44, 223  #Cicle 4, Bottom, Medium Sea Green
	.word 148, 116 #Circle 3, Right, Crimson
	.word 44, 13   #Circle 1, Upper, Orange, Number X, Number Y

Deck:
	.word '2', '!', 4 # (Card number, Suite, color) (! = heart, @ = diamond, # = spade, $ = club)
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
	.word 'J', '!', 4
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

jal DrawQuadrants

jal Init		   #Initialize program, seeds random value

jal DealOutCards	   #Deal out all cards at the beginning of the game

playAllHands:
add $a0, $0, $s7
jal PlayHand
add $s7, $s7, 1
blt $s7, 5, playAllHands

exit:li   $v0, 10          #system call for exit
syscall                    # Exit!

#### Play Hand ###############################
## a0 seat that makes decision
##############################################
PlayHand:
addiu $sp, $sp, -28     #Open up two words on stack
sw $ra, 24($sp)	       #Store ra

bne $a0, 3, checkHandAgain	#When not dealers turn, card isn't flipped



checkHandAgain:
add $t4, $0, $0		#Temp hold to count total score in hand

beq $a0, 0, cpu1	#SwitchCase to check a given hand
beq $a0, 1, myHand
beq $a0, 2, cpu2
beq $a0, 3, dealerHand

cpu1:
add $t0, $0, $s1	#Temp store for how many cards in the hand
la $t1, Player1Hand	#Load address to player 1
j checkHand

myHand:
add $t0, $0, $s2	#Temp store for how many cards in the hand
la $t1, MyHand		#Load address to player 1
j checkHand

cpu2:
add $t0, $0, $s3	#Temp store for how many cards in the hand
la $t1, Player2Hand	#Load address to player 1
j checkHand

dealerHand:
add $t0, $0, $s4	#Temp store for how many cards in the hand
la $t1, DealersHand	#Load address to player 1

checkHand:
lw $a1, 0($t1)		#Load card index for Deck

jal GetCardValue

add $t4, $t4, $v0	#Add to sum
add $t1, $t1, 4		#Check the next card
sub $t0, $t0, 1		#Decremnt cards traversed in hand
bne $t0, $0, checkHand	#Continue if more cards

beq $a0, 1, myDecision	#Allow for my decision

compDecision:
ble $t4, 16, hitMe			#Take another card less than 17
beq $a0, 0, savePlayer1Total		#Determine which cpu hand is being played
beq $a0, 2, savePlayer2Total
beq $a0, 3, saveDealerTotal

savePlayer1Total: add $s1, $0, $t4	#Chanage total number for cards in hand to Player1 "cpu" final score
j stay					#Stay when at 17 or higher
savePlayer2Total: add $s3, $0, $t4	#Chanage total number for cards in hand to Player2 "cpu" final score
j stay					#Stay when at 17 or higher
saveDealerTotal: add $s4, $0, $t4	#Chanage total number for cards in hand to dealer's final 
j stay					#Stay when at 17 or higher

myDecision:
blt $t4, 21, askForAnother	#Ask for another card if under 21
add $s2, $0, $t4		#Save total score
bge $t4, 21, stay		#Either you have 21 or your over

askForAnother: 
sw $a0, 0($sp)		#Store seat number
la $a0, HitOrStay    	#Asks end user if they would like another card
li $v0, 4	    	
syscall			#Print string

li $a0, 10              #load char value into arg for new line
li $v0, 11	        #cmd to print char,
syscall

li $v0, 5              #specify read int
syscall
bgt $v0, 1 askForAnother	#Read again if number is greater than 1 
bltz $v0, askForAnother		#Read again if number is less than 0
beq $v0, $0, stay		#Stay if you responded 0, else hitMe
lw $a0, 0($sp)		#Restore seat number

hitMe:
sw $t1, 20($sp)		#Store values that could change after function call
sw $t0, 16($sp)
sw $t3, 12($sp)
sw $a1, 8($sp)
sw $t4, 4($sp)
sw $a0, 0($sp)		#Restore seat number

jal DealAnotherCard	#Get another card

lw $a0, 0($sp)		#Restore seat number
lw $t1, 20($sp)		#ReStore values 
lw $t0, 16($sp)
lw $t3, 12($sp)
lw $a1, 8($sp)
lw $t4, 4($sp)
lw $ra, 24($sp)

j checkHandAgain	#Checks hand again starting at the first index in hand

stay:
lw $ra, 24($sp)	       #ReStore ra
addiu $sp, $sp, 24     #Open up two words on stack

jr $ra

## Get Card Value ########
## a1 index in Deck
### v0 decimal value
############################
GetCardValue:

la $t3, Deck		#Load address for deck
mul $a1, $a1, 12	#Each position is contains x and y values, 12 bytes
add $t3, $t3, $a1	#First word at index

lw $a1, 0($t3)		#Load card number value
beq $a1, 0x41, ace	#If the the value is an ace, card is worth 11
bgt $a1, 0x39, ten	#Anthing larger will be worth 10

sub $a1, $a1, 0x30	#Hex to decimal, parse out 0-9 will be result
j returnCardVal

ace:li $a1, 11
j returnCardVal
ten:li $a1, 10 

returnCardVal:add $v0, $0, $a1		#return decimal value

jr $ra

### Choose another card ##########
## a0 seat
## v0 new card index for Deck
#################################
DealAnotherCard:
addiu $sp, $sp, -8      #Allocate space on stack to save ra
sw $ra, 4($sp)	        #Store ra
sw $a0, 0($sp)	        #Store which hand to place card

jal GetRandNum		#Draw new card
lw $a0, 0($sp)		#restore arg

beq $a0, 0, player1Card	#Switch case on which player needs a card
beq $a0, 1, myCard
beq $a0, 2, player2Card
beq $a0, 3, dealerCard

player1Card:
#add $s1, $s1, 1		#Add new card to running counter
add $t1, $0, $s1	#Temp counter
la $t0, Player1Hand
j calcAndPlaceCard

myCard:
#add $s2, $s2, 1		#Add new card to running counter
add $t1, $0, $s2	#Temp counter
la $t0, MyHand
j calcAndPlaceCard

player2Card:
#add $s3, $s3, 1		#Add new card to running counter
add $t1, $0, $s3	#Temp counter
la $t0, Player2Hand
j calcAndPlaceCard

dealerCard:
#add $s4, $s4, 1
add $t1, $0, $s4	#Temp counter
la $t0, Player2Hand


calcAndPlaceCard:
mul $t1, $t1, 4		#Calc offset for array, each index is a word
add $t0, $t0, $t1	#Offset address address

sw $v0, 0($t0)		#Store in next avail address in hand

add $a1, $0, $v0	#Copy index for DrawCard
jal DrawCard

lw $ra, 4($sp)	        #Re-Store ra

addiu $sp, $sp, 8      #Move back up stack

jr $ra

### Draw Card #################################
## $a0 seat position
## $a1 Deck index
#################################################
DrawCard:
addiu $sp, $sp, -28     #Open up two words on stack
sw $ra, 24($sp)		#Store ra
sw $a0, 20($sp)		#Save seat position
sw $a1, 16($sp) 	#Save original a1

add $t4, $0, $a0	#Copy orginal value for player that is being delt

la $t0, CardTable	#Load address for card table
mul $a0, $a0, 8		#Each position is contains x and y values, 8 bytes
add $t0, $t0, $a0	#Add data offset to calc correct index in table

lw $a0, 0($t0)		#Load x value
lw $a1, 4($t0)		#Load y value

add $t3, $0, 20	#Offset x axis by 20 when more a player has more than 1 card

beq $t4, 0, drawPlayer1	#Check who's getting the card
beq $t4, 1, drawMine
beq $t4, 2, drawPlayer2
beq $t4, 3, drawDealer

drawPlayer1:
add $s1, $s1, 1		#Increment card count 
beq $s1, 1, finalizeX	#Dont add offset of first card
mul $t3, $t3, $s1	#Ajust offset depending on number of cards
add $a0, $a0, $t3	#Add in offset of original x
sub $a0, $a0, 20	#Correction to allow 1x 20
j finalizeX		#Save and adjust x value

drawMine:
add $s2, $s2, 1		#Increment card count 
beq $s2, 1, finalizeX	#Dont add offset of first card
mul $t3, $t3, $s2	#Ajust offset depending on number of cards
add $a0, $a0, $t3	#Add in offset of original x
sub $a0, $a0, 20	#Correction to allow 1x 20
j finalizeX		#Save and adjust x value

drawPlayer2:
add $s3, $s3, 1		#Increment card count 
beq $s3, 1, finalizeX	#Dont add offset of first card
mul $t3, $t3, $s3	#Ajust offset depending on number of cards
add $a0, $a0, $t3	#Add in offset of original x
sub $a0, $a0, 20	#Correction to allow 1x 20
j finalizeX		#Save and adjust x value

drawDealer:
add $s4, $s4, 1		#Increment card count 
beq $s4, 1, faceDown	#Dont add offset of first card
mul $t3, $t3, $s4	#Ajust offset depending on number of cards
add $a0, $a0, $t3	#Add in offset of original x
sub $a0, $a0, 20	#Correction to allow 1x 20
j finalizeX		#Save and adjust x value

faceDown:add $s6, $s6, 1 #Flag to draw card facedown

finalizeX:
sw $a0, 12($sp)		#Save x value for after DrawRectangle, will need to draw number and suite
sw $a1, 8($sp)

drawBlankCard:
li $a2, 5		#Load color white, hardcoded
li $a3, 18		#Load card size, hardcoded
jal DrawRectangle	#Draw the card

beq $s6, 1, doneDrawing	#Draw dealers first card face down

lw $a0, 20($sp)		#Restore original seat position
lw $a1, 16($sp)		#Restore original deck index

la $t0, Deck
mul $a1, $a1, 12	#Each position is contains x and y values, 12 bytes
add $t0, $t0, $a1	#Add data offset to calc correct index in table
sw $t0, 4($sp)		#Save address to the requested card info in deck for after after first OutText call

lw $a0, 12($sp)		#Save x value for after DrawRectangle, will need to draw number and suite
lw $a1, 8($sp)

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

lw $t0, 4($sp)		#Load address to request card in deck
lw $a0, 12($sp)		#Load address to x value of card
lw $a1, 8($sp)		#Load address to y value of card
lw $a3, 8($t0)		#load color

lw $a2, 0($t0)		#Load char for card number
add $a1, $a1, 12	#Offset y to draw number

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

num0: la  $a2, Text0		#Load appropriate ascii key for DigitTable
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

drawNumber:jal OutText		#draw number on card

lw $t0, 4($sp)		#Load address to request card in deck
lw $a0, 12($sp)		#Load address to x value of card
lw $a1, 8($sp)		#Load address to y value of card
lw $a3, 8($t0)		#load color

lw $a2, 0($t0)		#Load char for card number

li $t1, 9		
sw $t1, 0($sp)		#Adjust a2 for after first pass

add $a0, $a0, 8		#Offset x to draw number
add $a1, $a1, 12	#Offset y to draw number

beq $a2, 10, num0	#Draw the "0" in on the card for 10

doneDrawing:
add $s6, $0, $0		#Flag to draw cards faceup

li $a0, 500		#Hard code 500 ms pause, gives visual impression of dealing
jal Pause		#Call pause

lw $ra, 24($sp)		#Store ra
addiu $sp, $sp, 28     #Move Back up stack

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
addiu $sp, $sp, -8     #Allocate space on stack to save ra
sw $ra, 4($sp)	        #Store ra


add $t0, $0, $0		   	        #Counter for dealing all the cards
dealCards:
sw $t0, 0($sp)				#store counter

jal GetRandNum				#Draw new card
lw $ra, 4($sp)				#restore ra
add $a1, $0, $v0			#Index in deck for DrawCard

beq $t0, 0, dealFirstPlayer1st		#Switch Case for each player and dealer
beq $t0, 1, dealYour1st
beq $t0, 2, dealSecPlayer1st
beq $t0, 3, dealDealer1st
beq $t0, 4, dealFirstPlayer2nd
beq $t0, 5, dealYour2nd
beq $t0, 6, dealSecPlayer2nd
beq $t0, 7, dealDealer2nd


dealFirstPlayer1st: la $t1, Player1Hand	#Add first card first players hand 	
li $a0, 0				#Player 1 arg
j storeFirstCard

dealFirstPlayer2nd: la $t1, Player1Hand	#Add second card first players hand
li $a0, 0				#Player 1 arg
j storeSecondCard

dealSecPlayer1st: la $t1, Player2Hand   #Add second card first players hand 	
li $a0, 2				#Player 2 arg
j storeFirstCard

dealSecPlayer2nd: la $t1, Player2Hand #Add second card second players hand 	
li $a0, 2				#Player 2 arg
j storeSecondCard

dealYour1st: la $t1, MyHand	     #Add first card first players hand 
li $a0, 1				#My card arg
j storeFirstCard

dealYour2nd: la $t1, MyHand	     #Add second card to your hand 
li $a0, 1				#My card arg
j storeSecondCard

dealDealer1st: la $t1, DealersHand   #Add first card first dealers hand 
li $a0, 3				#Dealer card arg
j storeFirstCard		     

dealDealer2nd: la $t1, DealersHand   #Add second card first dealers hand 
li $a0, 3				#Dealer card arg
j storeSecondCard

storeFirstCard: sw $v0, 0($t1)       #Store anyone's first card
j cardDelt
storeSecondCard: sw $v0, 4($t1)      #Store anyone's second card
j cardDelt

cardDelt:

jal DrawCard				#Draw the card
lw $t0, 0($sp)				#Restore counter
add $t0, $t0, 1	     			#Inc counter
lw $ra, 4($sp)	      			#Restore ra
bne $t0, 8, dealCards		     #Continue if all cards haven't been dealt


addiu $sp, $sp, 8     #Move back up stack

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

########### Function to Draw the Quadrants ########
###################################################
DrawQuadrants:

addiu $sp, $sp, -4     		#Allocate space on stack to save ra
sw $ra, 0($sp)	       		#Store ra 

la $t0, HorizDividerLines	#Load address of array on stack	
lw $a0, 0($t0)			#Load word for x variable of horiz divider
lw $a1, 4($t0)          	#Load word for y variable of horiz divider
lw $a2, 8($t0)          	#Load word for white pixel color
lw $a3, 12($t0)			#Length of line
lw $t1, 16($t0)  		#Direction of the line

jal DrawDiagLine 		#Draw horizontal line left to right

lw $ra, 0($sp)	       		#Restore ra 

la $t0 HorizDividerLines	#Load address of array on stack	
lw $a0, 20($t0)			#Load word for x variable of horiz divider
lw $a1, 24($t0)         	#Load word for y variable of horiz divider
lw $a2, 28($t0)         	#Load word for white pixel color
lw $a3, 32($t0) 		#Length of line
lw $t1, 36($t0)  		#Direction of the line

jal DrawDiagLine		#Draw horizontal line right to left

lw $ra, 0($sp)	       		#Store ra 
addiu $sp, $sp, 4      		#Move back up stack

jr $ra

######Function to Draw a Diagnal Line####################
## $a0 for x 0-31
## $a1 for y 0-31
## $a2 for color number 0-7
## $a3 length of the Diagnal line
## $t1 draw direction on x axis, 0 pos, 1 neg direction
#########################################################
DrawDiagLine:
addi $sp, $sp, -16		#store all changable variables to stack
sw $ra, 12($sp)			#Store return address on stack
sw $a1, 8($sp)			#Store a registers that could change
sw $a2, 4($sp)
sw $t1, 0($sp)			#Save the signal for which direction to move on x axis

add $t0, $0, 32 		#Max Width of Bitmap
sub $t0, $t0, $a0		#Current distance to wall
		
DiagnalLoop:
jal DrawDot			#Mark the dot on bitmap
lw $t1, 0($sp)			#Restore the signal for direction to move on x axis
add $a3, $a3, -1		#Decrement remaining line length
beqz $t1, movePosDir		#Traverse from left to right
beq $t1, 1, moveNegDir		#Traverse from right to left
movePosDir:add $a0, $a0, 1	#Incrments x in when moving in positive direction
j proceed 
moveNegDir: sub $a0, $a0, 1	#Incrments x in when moving in negative direction
proceed:add $a1, $a1, 1		#Increment y
bne $a3, $0, DiagnalLoop	#Continue while line lenth hasn't been achieved

add $ra, $ra, 4			#Move back up stack

lw $a1, 8($sp)			#restore register, DrawDot could change them
lw $a2, 4($sp)


lw $ra, 12($sp)			#restore return address
addi $sp, $sp, 16		#move stack pointer back up

jr $ra

############## Function to Pause ##################
##### a0 Pause time "Milliseconds"
##############################################
Pause:
add $t4, $0, $a0      #Copy store time in temp register

add $t0, $0, $0       #Clear registers that will time comparison test
add $t1, $0, $0

li $v0, 30            #Get current timestap
syscall

add $t0, $a0, $0      #Store initial timestap

timeLoop:
syscall		       #Call for time to compare
add $t1, $a0, $0       #store compare time
subu $t3, $t1, $t0     #Subtract new first time stamp from second 
bltu $t3, $t4, timeLoop #Check to see if time has elapsed

syscall

jr $ra
