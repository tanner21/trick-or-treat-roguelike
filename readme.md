# Trick or Treat Roguelike (name pending)
Created for the 2024 Chicaghoul Jam - https://itch.io/jam/chicaghoul-2024


## Game loop
1. Select Character
   1. Warrior (Michelangelo from TMNT)
   2. Wizard (Harry Potter)
   3. Witch (Care Bear)
2. Go to next available house
   1. Normal House
      1. Trick
         1. Encounter (fight other kids / animals with your candy)
         2. Collect candy
      2. Treat
         1. Event
   2. Friend's House
      1. Heal
      2. Collect candy (or relic if we have time)
   3. Rich House
      1. Elite Trick
         1. Like Normal house, but harder
      2. Elite Treat
         1. Like Normal house, but more extreme
3. Reach the end of the neighborhood and go to Boss House
   1. Disgruntled Adult Boss
   2. Triggered after you take more than 1 piece of candy from an unattended basket
4. Finish (?)
   1. If we have time we can / should add more neighborhoods

## Candy
These are what you use to battle and heal yourself and others. Everyone has a set amount of health.

- Unhealthy = When used on a target, decreases health by amount X candy level
  - REESES = 5
  - TWIX = 4
  - HERSHEY BAR = 4
  - KITKAT = 3
  - CRUNCH = 2
- Healthy = When used on a target, increases health by amount X candy level
  - LIFESAVERS = -5
  - WERTHERS = -4
  - APPLE = -4
  - HEATH = -3
  - FRUIT GUMMIES = -2
- Special = When used on a target, applies effect X candy level
  - ROCK = 5 Damage and daze someone for a turn
  - NOW AND LATER = 4 Damage and attack again next turn
  - SWEDISH FISH = 3 Damage to two enemies
  - GUMMY BEARS = Takes damage for you next turn
  - NERDS ROPE = Tie up someone for next turn

### Candy Level Multiplier
These are multiplied by the base value of the candy. If there aren't enough random targets, it will trigger again on the same target.

  1. Fun Size = 0
  2. Regular Size = 2
  3. King Size = 3 and hits another random target
  4. Party Size = 3 and hits 2 additional random targets


## Trick
TODO
## Treat
TODO
## Friend's House
TODO
## Boss
TODO

## Assets Needed
### Art
- [ ] Fruit Gummies (all levels)
- [ ] Rock (all levels)
- [ ] Now and Later (all levels)
- [ ] Swedish Fish (all levels)
- [ ] Gummy Bears (all levels)
- [ ] Nerds Rope (all levels)
- [ ] Basket/Inventory Scene
- [ ] Normal Trick Background
- [ ] Rich Trick Background
- [ ] Trick Characters
  - [ ] Kids
    - [ ] Little kids (toddlers)
    - [ ] Medium kids (children)
    - [ ] Big kids (teens)
    - [ ] Rich Little kids (toddlers)
    - [ ] Rich Medium kids (children)
    - [ ] Rich Big kids (teens)
  - [ ] Pets
    - [ ] Dogs
    - [ ] Cats
    - [ ] Rich Dogs
    - [ ] Rich Cats
- [ ] Treat Background
- [ ] Friend's House Background
  - [ ] Friend 1
  - [ ] Friend 2
  - [ ] Friend 3
  - [ ] Friend 4
  - [ ] Friend 5
  - [ ] Friend 6
- [ ] Boss House Background
- [ ] Boss Character
- [ ] UI For Trick Encounter
- [ ] Finish Screen
- [ ] Start Screen
### Sounds
- [ ] Click on House
- [ ] Click on Friend's House
- [ ] Click on Rich House
- [ ] Click on Boss House
- [ ] Attack on kid
- [ ] Attack on rich kid
- [ ] Attack on dog
- [ ] Attack on cat
- [ ] Attack on boss
- [ ] Hover over candy
- [ ] Spooky background music
