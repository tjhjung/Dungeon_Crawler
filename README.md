# Dungeon Crawler Game with Random Room Generation (GameMaker)
Uses a ds-grid (2-D array) to impliment the random room generation
A controller is placed in the middle of the grid and it will travel in a random direction
Where ever the controller lands, it becomes a floor tile

Player and all the enemies are implimented using a finite-state machine
Player moves with the arrow keys, attacks with 'X' and dashes with 'Z'
Player has a move state, attack state, and dash state
Enemies have a very simple ai to determine what actions to take
Enemies have a attack state, wander state, idle state, and player chase state


Credits to a youtube tutorial made by HeartBeast
https://www.youtube.com/watch?v=TZtMNnXFnHE&list=PL9FzW-m48fn2gQVYFxDzq4cz2A4uGWusx