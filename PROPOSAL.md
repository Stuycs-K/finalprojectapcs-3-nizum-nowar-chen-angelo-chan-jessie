# Final Project Proposal

## Group Members:

Nowar Nizum, Angelo Chen, Jessie Chan

# IDEAS:

## Plants Vs. Zombies
### Link: https://www.miniplay.com/game/plants-vs-zombies
We want to incorporate a basic rendition of the game with waves of zombies with different defense abilities (newspaper, bucket head), different plants, and  periodic sun production. The plants will have cooldowns as to when they are planted as well as special abilities for when they are fed plant food. The game ends after a specific amount of ticks has passed and the remaining zombies of the board are all killed, or when a zombie gets past all the plants and reaches the other side of the map. For the spawning of the waves, we plan to use two lists or a similar data structure to link spawnables and their spawn times. We also want to include a catalogue of descriptions for the different types of plants and zombies. We can make our own version of the PVZ music.

## Fire Boy Water Girl
### Link: https://www.fireboynwatergirl.com/?p=game&id=1
We want to implement a platform game that follows the layout of the classic FireBoy and WaterGirl game. Instead of hardcoding the layout of each level, we will construct a level designer, a separate program that would customize a map that will later be used to play the game. In the actual game program, there are two objects (characters) who are controlled by separate keys to move up, down, left, and right. These movements can be combined to move diagonally. These objects can interact with other objects. If the character touches a lever, something in the map will change. The character can also move blocks around. The most important part is the pools of fire and water, which will remove the characters if touched.


## Tetris
### Link: https://play.tetris.com/
We want to create a game where falling blocks stack together (no way 😱) . The screen will be split into 4 parts: a display of the incoming block, a display of the block in hold, a display of the current score with the level and total lines cleared, and the rectangle where the blocks are stored. There will be the six types of blocks found in tetris. Random blocks will generate from the top of the screen and move down in constant ticks. The blocks’ positions can be shifted left and right using arrow keys and the orientation of the block can be rotated. Once a full line of blocks is formed, the line will clear, and the number of lines created will increase. The rest of the blocks will move down. The game ends when the height of the gamespace (2D array) is breached. We will make an end screen with the user’s high score and total time played in the round. We can also make our own version of the Tetris music.
