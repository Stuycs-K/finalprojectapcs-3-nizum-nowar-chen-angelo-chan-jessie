
# Technical Details:

Period 3
Nowar Nizum, Angelo Chen, Jessie Chan
Team Name:
## Plants vs Crumbies (cause we ate 💅💅😋)

## Project Description
We want to incorporate a basic rendition of the game with waves of zombies with different defense abilities (newspaper, bucket head), different plants, and periodic sun production. The plants will have cooldowns as to when they are planted as well as special abilities for when they are fed plant food. The game ends after a specific amount of ticks has passed and the remaining zombies of the board are all killed, or when a zombie gets past all the plants and reaches the other side of the map. For the spawning of the waves, we plan to use two lists or a similar data structure to link spawnables and their spawn times. We also want to include a catalogue of descriptions for the different types of plants and zombies. We can make our own version of the PVZ music.

## Expanded Description

### MVP
1.) The background will imported directly from the game. There should be at least one level, and a custom lawn will be generated.
2.) We will have an abstract class called Plants. We need to have at least two Plant objects: PeaShooter and SunFlower. Each plant will have a health bar, damage, a location, and Peas if its a PeaShooter as instance variables. Methods include attack() and addSun().
3.) We will have a Pea class, which will be used as objects by the PeaShooter. Sun will probably be a static variable.
3.) We will have a class called Zombies. Zombies will have a health bar, damage, and a location as instance variables. Their methods are attack.
4.) Plant and Zombies will be stored in ArrayLists. When they spawn or are created, they are added, and once they are killed (after health bar runs out), they are removed from the list.
5.) In Processing, we need a draw and tick function that would move the zombies accordingly and implement the feature of each plant.

How you will be using the topics covered in class in the project.

## Potential Features
1.) zombies with different abilities
2.) digging up plants with a shovel
3.) behavioral change of zombies at specific health levels
4.) multiple levels
5.) GUI for unlocked plants/zombies

# Project Design

UML Diagrams and descriptions of key algorithms, classes, and how things fit together.

![Alt text](BasicUML.png?raw=true "Title" ) 




# Intended pacing:

How you are breaking down the project and who is responsible for which parts.
 PeaShooter and basic zombie

A timeline with expected completion dates of parts of the project. (CHANGE THIS!!!!!)

## Phase 1: one day
- [ ] Zombie class
- [ ] Abstract Plant class
- [ ] Pea Class
- [ ] Lists to store plants and zombies

## Phase 2: one day
- [ ] Import image background + lawn placement for first level
- [ ] Create 2D array for plant positions
- [ ] Position method that returns coordinates of Plants/Zombies given an object's place in the array

## Phase 3: two days
- [ ] Figure out tick and spawn methods, create list of spawnables and spawn times
- [ ] Learn about frame rates and movement/draw from past labs

## Phase 4: one or two days
- [ ] Focus on interactions between Peas, PeaShooter and  BasicZombie
- [ ] AttackMethod(), inflicting damage for both

## Phase 5: one day
- [ ] work on addSun() and connect it to frame rates
- [ ] they should spawn in regular intervals
