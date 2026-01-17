# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make ci            # Run all CI checks locally (install + lint)
make serve         # Start local dev server at localhost:3000
make watch         # Start dev server with live reload
make format        # Auto-format with Prettier
make format-check  # Check formatting without modifying
make lint-html     # Lint HTML with HTMLHint
```

## Architecture

This is a single-file website (`index.html`) with inline CSS and JavaScript. No build step required.

### Key Components (all in index.html)

**Rendering Pipeline (Three.js)**

- Custom particle system using `THREE.Points` with shader materials
- Multi-pass post-processing: bloom, ghost trails (motion blur), composite shader
- Shader-based reflection effect in the composite pass

**Fern Generation**

- IFS (Iterated Function System) generates Barnsley fern fractal patterns via `transform()` function
- Poisson disk sampling (`poissonDiskSample()`) distributes ferns naturally across the viewport
- Per-fern parameter offsets (curl, spread, height, rotation, tilt) create variation
- Depth-based atmospheric perspective (scale, color fade, DOF blur)

**Time-Aware System**

- Four color palettes: night, dawn, day, dusk
- `getTimeOfDay()` checks system time, palettes transition smoothly via `lerpPalette()`

**Audio (Web Audio API)**

- Drone oscillators with harmonic series
- Filtered noise for wind ambiance
- Breath-synchronized gain modulation tied to growth animation

**UI State**

- About overlay: toggles visibility, restarts title animation on close
- Title animation: letter-by-letter fade-in with cycling dim state
- Sound toggle with keyboard shortcut (L)
