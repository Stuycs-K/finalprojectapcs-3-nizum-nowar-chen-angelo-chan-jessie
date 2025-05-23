
# Technical Details:

Period 3  
Nowar Nizum, Angelo Chen, Jessie Chan  
Team Name:  
## Plants vs Crumbies (cause we ate 💅💅😋)

## Project Description
We want to incorporate a basic rendition of the game with waves of zombies with different defense abilities (newspaper, bucket head), different plants, and periodic sun production. The plants will have cooldowns as to when they are planted as well as special abilities for when they are fed plant food. The game ends after a specific amount of ticks has passed and the remaining zombies of the board are all killed, or when a zombie gets past all the plants and reaches the other side of the map. For the spawning of the waves, we plan to use two lists or a similar data structure to link spawnables and their spawn times. We also want to include a catalogue of descriptions for the different types of plants and zombies. We can make our own version of the PVZ music.

## Expanded Description

### MVP
1. The background will imported directly from the game. There should be at least one level, and a custom lawn will be generated.  
2. We will have an abstract class called Plants. We need to have at least two Plant objects: PeaShooter and SunFlower. Each plant will have a health bar, damage, a location, and Peas if its a PeaShooter as instance variables. Methods include attack() and addSun().  
3. We will have a Pea class, which will be used as objects by the PeaShooter. Sun will probably be a static variable.  
4. We will have a class called Zombies. Zombies will have a health bar, damage, and a location as instance variables. Their methods are attack.  
5. Plant and Zombies will be stored in ArrayLists. When they spawn or are created, they are added, and once they are killed (after health bar runs out), they are removed from the list.  
6. In Processing, we need a draw and tick function that would move the zombies accordingly and implement the feature of each plant.  


## Potential Features
- [ ] zombies with different abilities  
- [ ] digging up plants with a shovel  
- [ ] behavioral change of zombies at specific health levels  
- [ ] multiple levels  
- [ ] GUI for unlocked plants/zombies  

# Project Design

The Plant class will be an abstract class. PeaShooter and Sunflower will extend this class. Sun will probably be a static variable in the game class (not yet reflected in the UML). Sun and Peas will likely be PVectors that change the variables of classes when they come into contact. The Zombie class will be used to instantiate a standard zombie, with subclasses of special types of zombies.

![Alt text](BasicUML.png?raw=true "Title" )




# Intended pacing:

How you are breaking down the project and who is responsible for which parts.
 PeaShooter and basic zombie

A timeline with expected completion dates of parts of the project. (CHANGE THIS!!!!!)

## Phase 1: one day (by May 23)
- [X] Zombie class
- [ ] Abstract Plant class
- [ ] Pea Class
- [X] Lists to store plants and zombies

- There are three team members and three main classes to make: PeaShooter, SunFlower, Zombie  
- ideally each member will be in charge of one class  
- - Jessie: Sunflower
- - Angelo: PeaShooter
- - Nowar: Zombie 
- The member in charge of PeaShooter is also responsible for the Pea Class
- The abstract Plant class and should be made together, and the lists should be made by whoever finishes first

## Phase 2: one day (by May 26)
- [ ] Import image background + lawn placement for first level
- [ ] Create 2D array for plant positions
- [ ] Position method that returns coordinates of Plants/Zombies given an object's place in the array

- Three tasks split between three members (will decide who day of)

## Phase 3: two days (by May 28)
- [ ] Figure out tick and spawn methods, create list of spawnables and spawn times
- [ ] Learn about frame rates and movement/draw from past labs

- We will work as a group to understand how the frame rates and the methods work
- One member in charge of tick method, one member in charge of spawn methods, one member in charge of spawnables list and spawn times

## Phase 4: one or two days (by May 30)
- [ ] Focus on interactions between Peas, PeaShooter and BasicZombie
- [ ] AttackMethod(), inflicting damage for both

- one member in charge of adding Pea object to PeaShooter and creating the projectile motion
- one member in charge of AttackMethod() for PeaShooter
- one member in charge of AttackMethod() for Zombie

## Phase 5: one day (by June 2)
- [ ] work on addSun() and connect it to frame rates
- [ ] they should spawn in regular intervals

- one member in charge of addSun() and frame rate
- all members responsible for ensuring all objects moving correctly with the frame rates
