# our nature

An interactive fern visualization using Three.js and IFS (Iterated Function System) fractals.

**Live site:** [ournature.studio](https://ournature.studio)

## Features

- Procedurally generated Barnsley ferns using Poisson disk sampling
- Time-aware color palettes (dawn, day, dusk, night)
- Ambient audio soundscape
- Subtle parallax camera movement
- About overlay with backdrop blur

## Keyboard Shortcuts

| Key   | Action               |
| ----- | -------------------- |
| `L`   | Toggle sound         |
| `A`   | Toggle about overlay |
| `Esc` | Close about overlay  |

## Development

```bash
npm install        # Install dependencies
npm run serve      # Start local server
npm run format     # Format code with Prettier
```

Or simply open `ferns.html` directly in a browser.

## Deployment

Automatically deployed to GitHub Pages on push to `main`.
