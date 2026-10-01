# Neon Hustle — forest enemies: Sporeling and Overgrown Loader (ChatGPT)

Use one chat per enemy. Attach `enemy_scav_idle.png` (and the hero) to the first message and say "same style as these". Make the **base picture first**, then attach it to every later message and say "the SAME enemy as the attached image, same size and style". Every picture faces **LEFT** (the game mirrors it).

Paste the **COMMON** block at the end of every prompt:
```
COMMON: flat chibi game art exactly like the attached characters: chunky rounded shapes, thick dark outline (#10131C), flat colours with one simple shadow tone, no realism, no fine detail. Fully TRANSPARENT background (PNG with alpha), NOT white, NOT black. No ground, no ground shadow, no text, letters or numbers.
```
For sheets, also paste the **SHEET** block (use the 4-column one for the Sporeling, the 2×2 one for the Loader):
```
SHEET 4-COLUMN: canvas 2048 x 1024 divided into 4 equal columns of 512 px. Each frame stays fully INSIDE its own column with empty space around it; nothing crosses into the next column. The creature stands in the centre of each column, feet on the same baseline in every frame, exactly the same size as in the attached image.
SHEET 2x2: square canvas 1024 x 1024 divided into a 2 x 2 grid of 512 px cells, frames in reading order (top-left, top-right, bottom-left, bottom-right). Each frame stays fully INSIDE its own cell with empty space around it. The robot stands in the centre of each cell, feet on the same baseline, exactly the same size in every frame.
```

---

## Sporeling (small, ~0.8 tiles tall, groups of 2–3)
Files: `art/enemies/sporeling/<name>.png`

**1. Base / idle → `sporelingIdle.png`** (1024 × 1024)
```
Asset: an enemy creature for the dark forest of a 2D cyberpunk game: a SPORELING, a small mutant mushroom that has come alive. A big round glowing cap (cyan #00E5FF with violet #A06BFF spots, the same glowing mushroom look as a forest mushroom patch), a short pale stubby stalk body with two small angry glowing eyes and a tiny jagged mouth under the cap rim, two stubby root-like legs and two thin root-like arms. A faint glow halo around the cap and 2-3 tiny floating spores. Mischievous and nasty, but cute-chibi. It is squat: about as wide as it is tall. Standing still, facing LEFT in a slight 3/4 view. Square canvas 1024 x 1024, centred, feet touching the bottom, fills about 70% of the height.
+ COMMON
```

**2. Disguised → `sporelingHidden.png`** (1024 × 1024)
```
Asset: the SAME Sporeling as the attached image, DISGUISED as an ordinary mushroom: it sits down with its legs and arms tucked under the cap and its eyes CLOSED and hidden in shadow, so it looks exactly like a normal glowing forest mushroom (same cap, same colours). Only one tiny detail gives it away: a single root toe peeking out. Same size and position as the attached image, feet on the same baseline.
+ COMMON
```

**3. Pop-up (ambush) → `sporelingPopup.png`** (4 frames)
```
Asset: the SAME Sporeling as the attached image, AMBUSH animation facing LEFT, 4 frames: 1) disguised as a normal mushroom, eyes closed; 2) the cap shakes, eyes snap open glowing, a few spores burst up; 3) it jumps up onto its root legs, arms thrown wide, mouth open in a shriek, a ring of spores around it; 4) lands in a crouched fighting stance, ready to attack.
+ SHEET 4-COLUMN + COMMON
```

**4. Walk → `sporelingWalk.png`** (4 frames)
```
Asset: the SAME Sporeling as the attached image, WALK cycle facing LEFT, 4 frames: it waddles on its stubby root legs, the big cap wobbling. 1) left root forward, cap tilted forward; 2) legs together, body bounced up slightly, one spore trailing behind; 3) right root forward, cap tilted back; 4) legs together again, bounce.
+ SHEET 4-COLUMN + COMMON
```

**5. Attack → `sporelingAttack.png`** (4 frames)
```
Asset: the SAME Sporeling as the attached image, SPORE PUFF attack facing LEFT, 4 frames: 1) it squats and inhales, cap swelling slightly; 2) the cap squeezes down and a small burst of glowing cyan-violet spores shoots out around it; 3) a round, soft spore cloud surrounds it (the cloud stays inside the frame); 4) the cloud thins out, the Sporeling stands back up. Keep the cloud flat and soft, same colours as the cap.
+ SHEET 4-COLUMN + COMMON
```

**6. Hurt / defeated → `sporelingHurt.png`** (2 frames, canvas 1024 × 512, 2 columns of 512)
```
Asset: the SAME Sporeling as the attached image, 2 frames side by side, facing LEFT: 1) HURT: flinching backwards, eyes squeezed shut, the cap dented, a few spores knocked loose; 2) DEFEATED: collapsed flat, the cap cracked and dim (glow gone), a small puff of spores rising from it. Canvas 1024 x 512, 2 equal columns of 512 px, each frame inside its own column, same baseline, same size as the attached image.
+ COMMON
```

**7. Spore cloud (left behind when it dies) → `sporeCloud.png`** (1024 × 1024)
```
Asset: a lingering SPORE CLOUD effect for a 2D top-down game: a low, soft, roughly round cloud of glowing cyan (#00E5FF) and violet (#A06BFF) spores, slightly transparent, with a few brighter floating spore dots. Wider than tall, it would cover one floor tile. Square canvas 1024 x 1024, centred, fills about 80% of the width.
+ COMMON
```

**8. Portrait (enemy plate) → `sporelingPortrait.png`** (1024 × 1024)
```
Asset: a PORTRAIT of the SAME Sporeling as the attached image for its health plate: head and cap only, facing slightly LEFT, angry glowing eyes, jagged grin, glowing cap filling most of the canvas. Square canvas 1024 x 1024, centred.
+ COMMON
```

---

## Overgrown Loader (mini-boss, blocks 2 × 2 tiles, ~2.5 tiles tall, one per forest zone)
Files: `art/enemies/loader/<name>.png`

**1. Base / idle → `loaderIdle.png`** (1024 × 1024)
```
Asset: a mini-boss enemy for the dark forest of a 2D cyberpunk game: the OVERGROWN LOADER, an old abandoned CARGO ROBOT reclaimed by the forest. A hunched, heavy forklift-style mech on two short thick legs, a boxy body in faded industrial yellow (#E0B83A) and graphite (#3A4257) with rust patches and hazard stripes, two big CLAMP ARMS reaching nearly to the ground, thick green vines wrapped around the arms and legs, moss and small ferns growing on its back and shoulders, a few small glowing cyan (#00E5FF) mushrooms on it, and one big round flickering AMBER (#FFB020) eye on its small cabin-head. Cables hang from it like roots. Slow, massive and menacing, but still chunky-chibi. It is about as wide as it is tall. Standing still, facing LEFT in a slight 3/4 view. Square canvas 1024 x 1024, centred, feet touching the bottom, fills about 90% of the canvas.
+ COMMON
```

**2. Walk → `loaderWalk.png`** (4 frames)
```
Asset: the SAME Overgrown Loader as the attached image, slow heavy WALK cycle facing LEFT, 4 frames: 1) left leg stomps forward, body tilting, clamp arms swinging; 2) legs together, body raised a little, a clump of moss falling off; 3) right leg stomps forward; 4) legs together, a small dust puff at the feet. Heavy and slow, the vines swaying.
+ SHEET 2x2 + COMMON
```

**3. Vine whip (ranged, roots the hero) → `loaderWhip.png`** (4 frames)
```
Asset: the SAME Overgrown Loader as the attached image, VINE WHIP attack facing LEFT, 4 frames: 1) it raises its right clamp arm, the vines on it glowing faintly green; 2) the arm swings forward and a long thick vine lashes out to the LEFT; 3) the vine is fully stretched out to the left, curling at the tip as if grabbing something; 4) the vine pulls back and coils around the arm again. The vine stays inside the frame.
+ SHEET 2x2 + COMMON
```

**4. Ground slam (close range) → `loaderSlam.png`** (4 frames)
```
Asset: the SAME Overgrown Loader as the attached image, GROUND SLAM attack facing LEFT, 4 frames: 1) both clamp arms raised high above its head, the amber eye glowing bright; 2) the arms come down fast; 3) the clamps smash the ground in front of it, a shockwave of dirt, leaves and small rocks bursting out; 4) it slowly straightens up, dust settling.
+ SHEET 2x2 + COMMON
```

**5. Hurt / defeated → `loaderHurt.png`** (2 frames, canvas 1536 × 1024, 2 columns of 768)
```
Asset: the SAME Overgrown Loader as the attached image, 2 frames side by side, facing LEFT: 1) HURT: staggering back, sparks bursting from a shoulder, a few leaves and moss knocked off, the eye flickering; 2) DEFEATED: collapsed onto its knees and forward onto its clamp arms, the eye dark, smoke rising, vines hanging limp. Canvas 1536 x 1024, 2 equal columns of 768 px, each frame inside its own column, same baseline, same size as the attached image.
+ COMMON
```

**6. Portrait (enemy plate) → `loaderPortrait.png`** (1024 × 1024)
```
Asset: a PORTRAIT of the SAME Overgrown Loader as the attached image for its health plate: its cabin-head and shoulders, the big amber eye glowing, moss and a small mushroom on top, vines around the neck, facing slightly LEFT. Square canvas 1024 x 1024, centred.
+ COMMON
```

---

## Fixes
- **Frames overlap:** "leave clear empty space between frames, each pose stays inside its own column/cell".
- **Size changes between frames:** "exactly the same size as the attached image in every frame".
- **Faces right:** "facing LEFT".
- **Background filled:** "transparent background, not white or black".
- **Too detailed (Loader):** "simpler and chunkier, like the attached characters".
