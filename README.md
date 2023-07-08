# Cosmos Conquerors

Role Reversed Space Invaders

## Game Details

### Player (Invader) Character Details

- You control the mob of invaders  
	- move the whole mob at once  

### NPC (Hero) Details

- The hero tries to kill a random invader  
	- selects one remaining invader  
	- ~~calculates with 100% accuracy depending on the player’s current speed~~
	- ~~adds random angle based on level~~
		- ~~higher level → less RNG → stronger hero~~  
	- move towards it
		- speed gets higher with higher levels

### Mechanics

- Press spacebar to shoot 1 bullet randomly from the mob  
	1. More invaders → More health → More RNG → Less reliable  
- Number of invaders carry over  
	- Health doesn’t reset → Game gets harder and harder → Eventually leading to game end

### Features

#### ~~Randomly Generated Background~~

1. ~~fill background with grass tile~~
2. ~~layer multiple noise maps with threshold for each of the following~~
	1. ~~trees~~
	2. ~~lakes~~

#### Score Calculation

$$
HeroScore = 1000 * HerosKilled
$$

$$
InvaderScore = NoOfInvadersWhenHeroKilled * 50
$$

$$
TotalScore = HeroScore + InvaderScore
$$

---

## Game Screenshot while #Developing

![[Attachment/Pasted image 20230708003757.png]]

Seeing concept image for the game

![[Attachment/Pasted image 20230708182857.png]]

shooting works, 1080p resolution, score works

![[Attachment/Pasted image 20230708183352.png]]

added canvas modulate + you can see the score in console 

![image](https://github.com/pawarherschel/GMTK2023/assets/93267442/20f73699-80f3-4e5d-8baf-ab6cbebb2925)

final product ig

---

## Attributions

 [Pixel Shmup](https://kenney.nl/assets/pixel-shmup) by [Kenny](https://kenney.nl/) #PoweredByKennyAssets

```plantuml
@startyaml
Pixel Shmup:
  By: Kenny
  Link: [[https://kenney.nl/assets/pixel-shmup]]
  Category: 2D
  Tile size: 16 × 16
  License: Creative Commons CC0
  Assets: 128
  Release date: [[01-11-2021]]
  Version: 1.1
  Tags: 
  - pixel
  - shmup
  - top-down
  - plane
@endyaml
```

[Crystal_Hit_Destroy](https://www.gamedevmarket.net/asset/combat-sounds-bundle-collection/) by [Cloud Audio](https://www.gamedevmarket.net/member/albertfernandez) 

```plantuml
@startyaml
Crystal_Hit_Destroy:
  Used for: Hero killed sfx
  From: Combat Sounds Bundle Collection  
  By: Cloud Audio
  Link: [[https://www.gamedevmarket.net/asset/combat-sounds-bundle-collection/]]
@endyaml
```

Gun 19_2  

```plantuml
@startyaml
Gun 19_2:
  Used for: Bullet Fired
  From: Crafting & RTS Sounds
  Part of: BONUS Combat Sounds
@endyaml
```

Impact_Sword_To_Shield_05_With_Echo_Enhancement  

```plantuml
@startyaml
Impact_Sword_To_Shield_05_With_Echo_Enhancement:
  Used for: Invader Killed
  From: Combat Sounds Bundle Collection
  By: Cloud Audio
  Link: [[https://www.gamedevmarket.net/asset/combat-sounds-bundle-collection/]]
@endyaml
```

LOOP_No Holding Back  

```plantuml
@startyaml
LOOP_No Holding Back:
  Used for: Gameplay Music
  From: 16 bit action music pack
  By: estudiocafofo
@endyaml
```

LOOP_Race to the Finish

```plantuml
@startyaml
LOOP_Race to the Finish:
  Used for: Main Menu Music
  From: 16 bit action music pack
  By: estudiocafofo
@endyaml
```

[godot-game-template](https://github.com/crystal-bit/godot-game-template) by [Crystal Bit](https://crystalbit.it/)

```plantuml
@startyaml
godot-game-template:
  Used for: CI template and QOL
  Link: [[https://github.com/crystal-bit/godot-game-template]]
  By: Crystal Bit
  GitHub Link: [[https://github.com/crystal-bit]]
  Personal Website: [[https://crystalbit.it/]]
@endyaml
```

[BitmapTextureFont](https://github.com/Digital-Sin/BitmapTextureFont) By [DigitalSin](https://github.com/Digital-Sin)

```plantuml
@startyaml
BitmapTextureFont:
  Used for: Creating Bitmap font from Kenny's Asset
  Link: [[https://github.com/Digital-Sin/BitmapTextureFont]]
  By: DigitalSin
  GitHub Link: [[https://github.com/Digital-Sin]]
@endyaml
```
