walker guess_game;

# initialize the number
signal init -> guess_game {
    number = 7;  # fixed number
    emit ask_guess -> guess_game;
}

# ask for a guess
signal ask_guess -> guess_game {
    print "Guess a number between 1 and 10.";
}

# handle guess
signal guess_val(val) -> guess_game {
    if val == number:
        print "Correct!";
    else:
        if val < number:
            print "Too low!";
        else:
            print "Too high!";
    emit ask_guess -> guess_game;
}
