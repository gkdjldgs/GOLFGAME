This is my golf project. Its very unfinished unpolished but its has alot of the basic systems down. which was a real struggle.

Introduction

The basic gist is that you are a crystal ball hired to collect potion ingridents, those being variants of normal fruit,
They can be seen as collectable buffs or debuffs, and right now I've added 3:
1. The Angry banana is the sort of goal you want to aim for in the game. There's a fruit counter in the game that shows how many of these guys you have to collect for the hole to unlock
2. The normal banana is the opposite of what you want to aim for, increasing your stroke by one and making it harder for the player to complete the course, unless if you have the
3. Evil watermelon, it changes the rules a bit so the angry banana acts like a normal banana, decreasing your fruit count for one shot.

I want to make the evil melon's effects more visually clear to the player which I will try to work on evenetually. 
Also I'll probably change the theme abit in the future, evil fruit doesn't seem to work that well.( Maybe just picking up potion ingriedents would work better).


More rules

To get to the next level you have to reduce the fruit count down to 0, which causes the hole to appear(its a caludron)
You reset the level by going overpar or pressing the reset button.
There are 5 ish levels in the game's current state.
Only mouse controls.
This follows the weeks theme of magic because you're a crystal golf ball trying to collect magic potion ingredients, (more like a magic salad).
Not the week after that though(signal i think?)

Why
So about a few weeks ago after the first siege week me and my older brother looked at this weeks theme, magic. 
I wanted to make a golf game, and I got the idea in my head to be a golfball picking up random cursed fruit
We thought it was funny so I started on it. (A golf game seeme really intresting at that time)

Credits

Thanks to Sleeping Colossus, their tutorial is really good.
I more specifically used it for calculating and applying golf ball velocity, adding hitboxes to the tiles using physics paint, checking when the 
ball is moving.
Check them out: https://www.youtube.com/@sleepingcolossus

The fonts are a work in progress right now, I'll credit them when its more soldified.

Most of the rest of the code has been me looking through godot forums for help or watching some videos.
There is no AI generated stuff in here I'm drawing everything by hand.

Techstack

So basically how this project works is with alot of global variables
autoload.level is an important one as on intializing a scene it works with 2 commands passes() and bases()
these work so on reaching the golf hole or pressing the level button it will check to see what level you are on(like level 1)
then send you to level 2 and reset and update the stroke, over par and fruit counter so it doesn't stay the same as the previous one
then it updates your level to 2.
autoload.stroke counts how many times you shoot your ball increasing with one every time you do or you hit a normal banana
autoload.overpar demtermines how many strokes you can do before the scene resets
autoload.fruit determines how many fruit you have to collect until the hole appears

The holes or levels themselves are made up of a tile map that provides walls and boundaries for the ball to move. 
The powerups and the hole are just copys of different scenes that are made to wrok on each hole.
Everytime the level is beaten the autoload.highest acts a way for a person to go back to the menu and still save their progress, by checking the highest level a person has beaten giving access to the respective level buttons
