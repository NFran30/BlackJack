.data

Stack_Top: 	   #Allocates memory
Stack_End:         .word 0:80 
Simon_Array:       .word 0:80
Winner:            .asciiz "Congrats, you won!\n"
Loser:             .asciiz "Mismatch! You lost...\n"
DealersHand:	   .word 0:20 
Player1Hand:
Player2Hand:
YourHand:

Deck:
	.word '2', 'H' # (Card, Suite)
	.word '2', 'D' # Pattern continues through entire array
	.word '2', 'S'
	.word '2', 'C'
	.word '3', 'H'
	.word '3', 'D'
	.word '3', 'S'
	.word '3', 'C'
	.word '4', 'H'
	.word '4', 'D'
	.word '4', 'S'
	.word '4', 'C'
	.word '5', 'H'
	.word '5', 'D'
	.word '5', 'S'
	.word '5', 'C'
	.word '6', 'H'
	.word '6', 'D'
	.word '6', 'S'
	.word '6', 'C'
	.word '7', 'H'
	.word '7', 'D'
	.word '7', 'S'
	.word '7', 'C'
	.word '8', 'H'
	.word '8', 'D'
	.word '8', 'S'
	.word '8', 'C'
	.word '9', 'H'
	.word '9', 'D'
	.word '9', 'S'
	.word '9', 'C'
	.word  10, 'H'
	.word  10, 'D'
	.word  10, 'S'
	.word  10, 'C'
	.word  10, 'H'
	.word 'J', 'D'
	.word 'J', 'S'
	.word 'J', 'C'
	.word 'Q', 'H'
	.word 'Q', 'D'
	.word 'Q', 'S'
	.word 'Q', 'C'
	.word 'K', 'H'
	.word 'K', 'D'
	.word 'K', 'S'
	.word 'K', 'C'
	.word 'A', 'H'	
	.word 'A', 'D'	
	.word 'A', 'S'
	.word 'A', 'C'
	
.text
la $sp, Stack_End	   #point $sp to memory stack

Main:

jal Init		   #Initialize program, seeds random value

jal DealOutCards	   #Deal out all cards at the beginning of the game






exit:li   $v0, 10          #system call for exit
syscall                    # Exit!

##### Deals cards, game begins ##########
########################################
DealOutCards:

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
### v0 return a random number #######
GetRandNum:
add $a0, $0, $0	         #Generator 0, we only are using one generator for this lab
sw $ra, 4($sp)           #Store stackpointer for $ra

add $a1, $0, 51	         #Specify the limit on the range
li $v0, 42               #specify read char
syscall
add $a0, $a0, 0		 #Add to return, range will be 0-51

add $v0, $0, $a0	 #Return random number

jr $ra