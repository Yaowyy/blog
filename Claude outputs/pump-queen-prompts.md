# Neon Hustle — Pump Queen boss + Magic Nozzle (ChatGPT prompts)

The first boss: the living fuel that leaked from the greaser gas station's tank. Every Drip is a drop of her.
**Stage 1** she wears a gas pump like armour. **Stage 2** the shell bursts off and she is a big burning oil blob.

Use one chat. Attach `dripIdle.png` and `gasStation.png` to the first message and say "same style as these". Make the **two base pictures first** (1 and 6), then attach the matching base to every later message and say "the SAME boss as the attached image, same size and style". Every picture faces **LEFT** (the game mirrors it).

Save as `art/enemies/pumpQueen/<name>.png` and send them to me: I convert them to WebP and fit them to the game. Until then she is drawn with simple shapes.

Paste **COMMON** at the end of every prompt:
```
COMMON: flat chibi game art exactly like the attached characters: chunky rounded shapes, thick dark outline (#10131C), flat colours with one simple shadow tone, no realism, no fine detail. Fully TRANSPARENT background (PNG with alpha), NOT white, NOT black. No ground, no ground shadow, no text, letters or numbers.
```
For the 4-frame sheets also paste **SHEET 2x2**:
```
SHEET 2x2: square canvas 1024 x 1024 divided into a 2 x 2 grid of 512 px cells, frames in reading order (top-left, top-right, bottom-left, bottom-right). Each frame stays fully INSIDE its own cell with empty space around it. The boss stands in the centre of each cell, its bottom on the same baseline near the bottom of the cell, exactly the same size in every frame (filling about 85% of the cell height).
```

---

## Stage 1: the Pump

**1. Base / idle → `queenIdle1.png`** (1024 × 1024)
```
Asset: the boss of a 2D cyberpunk slum game: the PUMP QUEEN, a living blob of black oil that has grown INTO an old gas station fuel pump and wears it like armour. The pump is a chunky, tall, faded red (#B8322E) fuel dispenser with rust spots and a cream (#D9D2C3) sign box on top with a thin magenta (#FF2BD6) neon strip. Its cracked glass PRICE DISPLAY is her face: inside it, two glowing amber (#FFB020) digital blocks are her eyes, with an angry slant. Glossy black oil with small magenta and cyan reflections (exactly like the attached Drip's oil) oozes out of every seam, drips down the sides and pools in a wide puddle she sits in. Two black rubber FUEL HOSES come out of her sides as arms, each ending in a steel fuel NOZZLE like a hand. Menacing but chunky-chibi, a bit wider than tall at the base. Facing LEFT in a slight 3/4 view. Square canvas 1024 x 1024, centred, bottom touching the bottom, fills about 90% of the canvas.
+ COMMON
```

**2. Walk → `queenWalk1.png`** (4 frames)
```
Asset: the SAME Pump Queen as the attached image, slow heavy WALK facing LEFT, 4 frames: she slides forward on her oil puddle, the whole pump tilting and bobbing: 1) leaning forward, the puddle stretching ahead; 2) upright, oil pulling the pump along, a drip falling; 3) leaning back a little, the puddle catching up; 4) upright again, the hoses swinging. Heavy and sloshing.
+ SHEET 2x2 + COMMON
```

**3. Hose Slap → `queenSlap1.png`** (4 frames)
```
Asset: the SAME Pump Queen as the attached image, HOSE SLAP attack facing LEFT, 4 frames: 1) she raises her front hose high like a whip, the nozzle up above the pump, the amber eyes narrowing; 2) the hose swings down fast toward the LEFT, motion lines; 3) the nozzle smashes down in front of her, a splash of black oil; 4) she pulls the hose back to her side.
+ SHEET 2x2 + COMMON
```

**4. Fuel Spray → `queenSpray1.png`** (4 frames)
```
Asset: the SAME Pump Queen as the attached image, FUEL SPRAY attack facing LEFT, 4 frames: 1) she aims her front nozzle forward to the LEFT, the display eyes flashing bright; 2) a short burst of dark amber fuel shoots out of the nozzle; 3) a wide cone of fuel spray to the LEFT, dark brown-amber (#5A3410 to #FF9A2E) droplets (the spray stays inside the cell); 4) the spray thins out, a few drops falling from the nozzle.
+ SHEET 2x2 + COMMON
```

**5. Ignition (stage change) → `queenRoar.png`** (4 frames)
```
Asset: the SAME Pump Queen as the attached image, IGNITION transformation facing LEFT, 4 frames: 1) she shakes violently, cracks spreading over the red pump, the display glass shattering; 2) she screams, orange fire glowing through every crack, oil boiling up; 3) the pump shell BURSTS apart into flying red metal pieces, a flash of orange fire in the middle; 4) what's left: a big black oil blob with a burning orange core and small flames on top (the stage-2 look), a few pump pieces still falling.
+ SHEET 2x2 + COMMON
```

## Stage 2: the burning blob

**6. Base / idle → `queenIdle2.png`** (1024 × 1024)
```
Asset: the SAME Pump Queen as the attached image after her pump shell burst off: now a BIG blob of glossy black oil, taller than before, with magenta and cyan reflections, a glowing ORANGE (#FF9A2E, hot yellow #FFE27A in the middle) burning core in her chest seen through the oil, two angry amber (#FFB020) eyes, small flames dancing on top of her head like a crown, a broken red pump panel and a cracked price display still stuck in her side, and the two fuel hoses still hanging from her like tentacles with steel nozzles at the ends. Facing LEFT in a slight 3/4 view. Square canvas 1024 x 1024, centred, bottom touching the bottom, fills about 90% of the canvas.
+ COMMON
```

**7. Walk → `queenWalk2.png`** (4 frames)
```
Asset: the SAME burning Pump Queen (stage 2) as the attached image, WALK facing LEFT, 4 frames: she oozes forward faster, the blob squashing and stretching: 1) stretched forward; 2) squashed low and wide; 3) stretched tall; 4) back to normal, the flames on top flickering, small burning drops left behind.
+ SHEET 2x2 + COMMON
```

**8. Hose Slap → `queenSlap2.png`** (4 frames)
```
Asset: the SAME burning Pump Queen (stage 2) as the attached image, HOSE SLAP facing LEFT, 4 frames: 1) a hose-tentacle rises high, its nozzle dripping burning fuel; 2) it whips down to the LEFT; 3) it smashes down in front of her with a splash of burning oil; 4) it pulls back.
+ SHEET 2x2 + COMMON
```

**9. Pump & Ignite → `queenIgnite2.png`** (4 frames)
```
Asset: the SAME burning Pump Queen (stage 2) as the attached image, PUMP & IGNITE attack facing LEFT, 4 frames: 1) she swells up, the core glowing brighter; 2) she sprays several blobs of black oil from both nozzles up and out to the LEFT in arcs; 3) she flicks a bright orange spark from her core with one nozzle; 4) she settles back, grinning, flames on her head flaring.
+ SHEET 2x2 + COMMON
```

**10. Hurt / defeated → `queenHurt.png`** (4 frames)
```
Asset: the Pump Queen from the attached images, 4 frames facing LEFT: 1) HURT stage 1: the red pump recoiling, display flickering, oil splashing; 2) HURT stage 2: the burning blob recoiling, core dimming, flames knocked sideways; 3) DEFEATED: the blob collapsing, the fire going out, smoke rising; 4) DEAD: a wide flat puddle of black oil with the broken red pump lying on its side in it and a dead hose and nozzle, a thin wisp of smoke, no glow.
+ SHEET 2x2 + COMMON
```

**11. Portrait (boss plate) → `queenPortrait.png`** (1024 × 1024)
```
Asset: a PORTRAIT of the Pump Queen for her health plate: the cracked price display face of the red pump with the two angry amber digital eyes, black oil oozing over the top, one nozzle raised beside it, facing slightly LEFT. Square canvas 1024 x 1024, centred, filling most of the canvas.
+ COMMON
```

---

## Magic Nozzle (rare spell item she drops) → `art/items/skills/magicNozzle.png`
Attach the Magic Tar icon (`magicTart.png`) and say "same icon style as this".
```
Asset: inventory ICON for a rare spell item "Magic Nozzle": a steel gas-pump fuel NOZZLE (grey handle with a black trigger guard, a short curved spout) with a stub of black rubber hose, glossy black oil dripping from the spout with magenta and cyan reflections, the spout tip glowing hot orange (#FF9A2E) and a small flame flickering on it. A soft blue (#4EA1FF) glow around it to show it's rare. Diagonal, spout pointing up-right, 3/4 view.
STYLE: same flat chibi icon style as the attached icon: chunky rounded shapes, thick dark outline (#10131C), flat colours with one simple shadow tone, bold silhouette that reads at 48 px.
FRAMING: square canvas 1024 x 1024, the item centred and filling about 75%.
BACKGROUND: fully TRANSPARENT (PNG with alpha), NOT white, NOT black. No slot frame, no text, no letters, no numbers, no logos.
```

## Fixes
- **Frames overlap:** "leave clear empty space between frames, each pose stays inside its own cell".
- **Size changes between frames:** "exactly the same size as the attached image in every frame".
- **Faces right:** "facing LEFT".
- **Looks like a normal gas pump with no life:** "she is living black oil wearing the pump, oil oozing from every seam, the display is her face".
- **Too detailed:** "simpler and chunkier, like the attached characters".
- **Background filled:** "transparent background, not white or black".
