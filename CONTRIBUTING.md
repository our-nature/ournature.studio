# Contributing

Thanks for your interest in contributing to our nature!

## Getting Started

1. Fork and clone the repository
2. Install dependencies:
    ```bash
    make install
    ```
3. Start the dev server with live reload:
    ```bash
    make watch
    ```

## Development Workflow

- Run `make ci` before committing to ensure all checks pass
- Use `make format` to auto-format code with Prettier
- Commits follow [Conventional Commits](https://www.conventionalcommits.org/) (enforced by commitlint)

## Code Style

- Formatting is handled by Prettier (runs automatically on commit via Husky)
- HTML is linted with HTMLHint
- Use the recommended VS Code extensions for the best experience

## Project Structure

This is intentionally a single-file project. All code lives in `index.html` with inline CSS and JavaScript. Please keep it that way unless there's a compelling reason to split things out.

## Making Changes

1. Create a feature branch from `main`
2. Make your changes
3. Run `make ci` to verify everything passes
4. Open a pull request

## Questions?

Open an issue if you have questions or want to discuss a feature before implementing it.
