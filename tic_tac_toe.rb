#Implementation of Two Player Tic-Tac-Toe game in Ruby.

=begin
	
We will make the board using Hash 
in which keys will be the location(i.e : top-left,mid-right,etc.)
and initialliy it's values will be empty space and then after every move 
we will change the value according to player's choice of move.
	
=end


def printBoard(board)
	puts "#{board[7]} | #{board[8]} | #{board[9]}"
	puts "--+---+--"
	puts "#{board[4]} | #{board[5]} | #{board[6]}"
	puts "--+---+--"
	puts "#{board[1]} | #{board[2]} | #{board[3]}"
end

# Now we'll write the main function which has all the gameplay functionality.

def game()
	turn = 'X'
    count = 0
    gameBoard = {7 => ' ' , 8 => ' ' , 9 => ' ' ,
                 4 => ' ' , 5 => ' ' , 6 => ' ' ,
                 1 => ' ' , 2 => ' ' , 3 => ' ' }

	board_keys = Array.new

	for key in gameBoard
		board_keys.append(key)
	end

    for i in (0..10)
        printBoard(gameBoard)
        puts "#{turn} Choose your move"

        move = gets
        move_int = move.to_i

        if move =~ /[1-9]/ && move_int < 10
        	if gameBoard[move_int] == ' '
                gameBoard[move_int] = turn
                count += 1
            else
            	puts "That place is already filled."
            	puts "Move to which place?"
           	    redo
           	end

           	# Now we will check if player X or O has won,for every move after 5 moves.
           	if count >= 5
           		if gameBoard[7] == gameBoard[8] && gameBoard[7] == gameBoard[9] && gameBoard[7] != ' ' #checking the top
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[4] == gameBoard[5] && gameBoard[4] == gameBoard[6] && gameBoard[4] != ' ' #checking the middle
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[1] == gameBoard[2] && gameBoard[1] == gameBoard[3] && gameBoard[1] != ' ' #checking the bottom
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[1] == gameBoard[4] && gameBoard[1] == gameBoard[7] && gameBoard[1] != ' ' #checking the left
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[2] == gameBoard[5] && gameBoard[2] == gameBoard[8] && gameBoard[2] != ' ' #checking down the middle
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[3] == gameBoard[6] && gameBoard[3] == gameBoard[9] && gameBoard[3] != ' ' # checking the right
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[7] == gameBoard[5] && gameBoard[7] == gameBoard[3] && gameBoard[7] != ' ' #checking diagonally from left
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		elsif gameBoard[1] == gameBoard[5] && gameBoard[1] == gameBoard[9] && gameBoard[1] != ' ' #checking diagonally from the right
           			printBoard(gameBoard)
           			puts "Game Over."
           			puts " ****  #{turn} won. ****"
           			break
           		end
           	end

            # If neither X nor O wins and the board is full, we'll declare the result as 'tie'.
           	if count == 9
           		puts "Game Over."                
                puts "It's a Tie!!"
                break
            end
        else
        	puts "Invalid input"
            break
        end

        # Now we have to change the player after every move.
        if turn =='X'
            turn = 'O'
        else
            turn = 'X' 
        end
    end

    # Now we will ask if player wants to restart the game or not.
    puts "Do want to play Again?(y/n)"
    restart = gets.chomp 
    if restart == "y" || restart == "Y"
    	game()
    end
end
game()


           			
           			
           			
           			
           			