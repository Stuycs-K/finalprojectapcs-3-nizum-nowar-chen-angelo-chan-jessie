# Dev Log:

This document must be updated daily every time you finish a work session.

## Angelo Chen

### 2025-05-20 UML Diagram
 I outlined a basic UML diagram with abstract class plant, with subclasses peashooter and sunflower. Also a class zombie, with subclasses buckethead and newspaper.

### 2025-05-21 AP + Sick at home :(

### 2025-5-21 Updated UML
 Updated UML
 I updated the UML to reflect the game/main class.

 (At Home)
 Added more to the UML structure, including a Pea and Sun class, as well as associated arrays. I also updated the plant class and made a barebones peashooter class.

### 2025-5-22 Updated UML
 Added more accessor methods to the classes and differentiated between Sunflower Sun and Game Sun. Their only different is in their movement. They will update the static game Sun[]. New interfaces and classes update from Mr. K

### 2025-5-27 More UML Updates
 Added to UML, updated Map and Displayable classes. Also added clickable interface. No more UML stuff hopefully that thing hurts my head.

 (At Home)
 Added the Pea class and updated displayable and projectile. Tried to test the pea class, but resulted in a null pointer exception, will address with group mates.
 Update: Fixed null pointer, but the pea will not move.

### 2025-5-28 Updated Pea Class
 With Nowar, made the pea class move, but the plant also moves along with it.

 (At Home)
 Made displayable an interface. Made a preliminary sun class, and also a frame ticking to spawn a sun randomly at the top of the screen that updates the sunbank when clicked. It also disappears.

 ### 2025 5-29 Added Damaging
  Added damaging options to plants and zombies.

  (At Home)
  Added colliding functions to map

### 2025 5-30 Updated Images
  Added images to Sun and Zombie. Sun adds to SunBank when it is clicked, and disappears. It also falls and expires after a few seconds of landing at a certain point.

### 2025 6-1 Updated lose screen
  (At Home)

  Updated game so that a lose screen appears after the zombies make it past a certain point. tried giving peashooters images, but not going well.

### 2025 6-2 Added peashooter Image tried to debug PeaShooter
  Peashooters now display rather than circles. Tried to make it so when peas collide with zombies, they go away, but only some of them go away.

  (At home)
  Tried to fix some stuff but faced a bunch of merge conflicts. Peas don't work anymore, not sure why. Will fix in class tomorrow.

### 2025 6-3 Fixed peas
  Peas now disappear on contact. Fixed zombies not dying. Tried to make it so the peashooters only shoot when there is a zombie.

  (at home)
  Unsuccessful at trying to get the peas to shoot, but added some things that may be helpful for discussion
