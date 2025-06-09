# Dev Log:

This document must be updated daily every time you finish a work session.

## Jessie Chan

### 2025-05-19 - Brief description
Used the interactive website to learn about branching.
Working on Prototype with Nowar.

### 2025-05-20
Created new branch. Continued working on prototype.

### 2025-05-22
Plant abstract class.

### 2025-05-23
Discussed UML with Mr. K. Worked on UML diagram with Angelo. 

### 2025-05-27
Projectile class. Changed PVector coordinate system. Got plant to display and zombie to move again. 

### 2025-05-28
<img src="IMG_0723.png" alt="isolated" />

### 2025-05-29
Made transition from row/col position into x/y coordinate system better. Spawned zombies in random rows and made them move.

### 2025-05-30
Made zombies start moving at random times. 

### 2025-05-31 && 06-01
Fixed merge conflicts. Made functions to tell where Zombies are relative to 2DArray lawn. Zombies will collide now with plants and begin eating them. Plants will disppear after their HP drops to 0. 

### 2025-06-02
Add Sunflowers to board and display them as images. Got sunflowers to spawn suns. Then adjusted them to spawn them at different times rather all at once. 


### 2025-06-03, 06-04, 06-05
Tweaking spawnTimes to let zombies come in waves using Math.random() and frameCount. Then made waves spawn when all the zombies died. Then realized Zombies didn't actually start moving at their assigned spawnTime, they started moving as soon as their ancestors died. #crashout. Realized that my loop was removing zombies so the index I used to loop through spawnTimes was #notchanging!!!! Scrapped spawnTimes array. Made spawnTime an instance of Zombie. 

Also went through PVZ code to add comments for readability.