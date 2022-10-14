%Program name - Assignment #5
%Start Date - October, 4, 2022
%My name - Ben Spence
%purpose - This program makes a rock cover paper scissors shattering on thy rock

%variable declarations
var rps : int
var choice : int
var rpstype : string
var key : string (1)
var intfont : int
var wins : int
wins := 0
var ties : int
ties := 0
var losses : int
losses := 0
var playagain : string
intfont := Font.New ("Times New Roman:25:bold")
setscreen ("graphics:800,600")

%prompts starting messages
Font.Draw ("Rock, Paper, Scissors", 265, 575, intfont, black)

%description
locate (4, 20)
put "Press any key to partake in a classic game of Rock, Paper, Scissors!"
getch (key)

cls

loop

    %gives user options of rock, paper, scissors
    put "What would you like to choose?"
    locate (2, 1)
    put "(1)Rock " ..
    put "(2)Paper " ..
    put "(3)Scissors "

    locate (3, 1)
    put "(Wins) " ..
    put wins
    put "(Ties) " ..
    put ties
    put "(Losses) " ..
    put losses
    get choice


    %random number generator
    randint (rps, 1, 3)
    if rps = 1 then %
	rpstype := "Rock"
    elsif rps = 2 then
	rpstype := "Paper"
    elsif rps = 3 then
	rpstype := "Scissors"
    end if

    %clears the screen
    cls

    %user wins
    if choice = 1 and rps = 3 or choice = 2 and rps = 1 or choice = 3 and rps = 2 then
	put "LOADING" .. %added texture
	delay (250)
	put "." ..
	delay (250)
	put "." ..
	delay (250)
	put "."
	delay (700)
	cls
	put "Your opponent chose " .. %show the user what the computer chose
	delay (700)
	put rpstype ..
	put "."
	delay (500)
	put "You win! "
	wins := wins + 1 %The wins will keep on stacking

	%user ties
    elsif choice = 1 and rps = 1 or choice = 2 and rps = 2 or choice = 3 and rps = 3 then
	put "LOADING" .. %added texture
	delay (250)
	put "." ..
	delay (250)
	put "." ..
	delay (250)
	put "."
	delay (700)
	cls
	put "Your opponent chose " .. %show the user what the computer chose
	delay (700)
	put rpstype ..
	put "."
	delay (500)
	put "It's a tie! "
	ties := ties + 1 %The ties will keep on stacking

	%user loses
    elsif choice = 1 and rps = 2 or choice = 2 and rps = 3 or choice = 3 and rps = 1 then
	put "LOADING" .. %added texture
	delay (250)
	put "." ..
	delay (250)
	put "." ..
	delay (250)
	put "."
	delay (700)
	cls
	put "Your opponent chose " .. %show the user what the computer chose
	delay (700)
	put rpstype ..
	put "."
	delay (500)
	put "You lose! "
	losses := losses + 1 %The losses will keep on stacking

	%if user chooses anything over 3 let them know its a invalid choice
    elsif choice > 3 then
	put "Invalid choice, try again."

    end if

    delay (1000)

    %let the user decide if they want to keep playing
    locate (4, 1)
    put "Would you like to play again? (Y/N)"
    get playagain
    playagain := Str.Upper (playagain)
    exit when playagain = "N"

    %clears screen of remaining text so users will have a fresh start
    cls

    %game finishes
end loop






