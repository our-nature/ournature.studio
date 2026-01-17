# 🌱 our nature

[![CI](https://github.com/our-nature/ournature.studio/actions/workflows/ci.yml/badge.svg)](https://github.com/our-nature/ournature.studio/actions/workflows/ci.yml)
[![Deploy](https://github.com/our-nature/ournature.studio/actions/workflows/deploy.yml/badge.svg)](https://github.com/our-nature/ournature.studio/actions/workflows/deploy.yml)
[![Website](https://img.shields.io/website?url=https%3A%2F%2Fournature.studio&label=ournature.studio)](https://ournature.studio)
[![Code Style: Prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://prettier.io/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

An interactive fern visualization using Three.js and IFS (Iterated Function System) fractals.

**Live site:** [ournature.studio](https://ournature.studio)

## Features

- 🌿 Procedurally generated Barnsley ferns using Poisson disk sampling
- 🌅 Time-aware color palettes (dawn, day, dusk, night)
- 🔊 Ambient audio soundscape with harmonic drone and wind
- 🎥 Subtle parallax camera movement with depth-of-field
- ✨ Multi-pass post-processing (bloom, motion blur, reflections)

## Keyboard Shortcuts

| Key   | Action               |
| ----- | -------------------- |
| `L`   | Toggle sound         |
| `A`   | Toggle about overlay |
| `Esc` | Close about overlay  |

## Development

```bash
make install       # Install dependencies
make serve         # Start local server at localhost:3000
make format        # Format code with Prettier
make ci            # Run CI checks locally
```

Or simply open `index.html` directly in a browser.

## Deployment

Automatically deployed to GitHub Pages on push to `main`.
