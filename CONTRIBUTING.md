# Contributing to Sam-GB-Emu

Thanks for your interest in Sam-GB-Emu.

This project is currently maintained by a single developer, but the repository is structured with future contributors in mind. This document describes the development workflow and standards used for the project.

## Development Setup

### Requirements

* Rust stable toolchain
* Cargo
* Git

Install Rust using `rustup`:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Verify your installation:

```bash
rustc --version
cargo --version
```

Clone the repository:

```bash
git clone https://github.com/<username>/Sam-GB-Emu.git
cd Sam-GB-Emu
```

Install repository Git hooks:

```powershell
.\scripts\setup-hooks.ps1
```

## Branching

The `main` branch is protected and should always contain working code.

Changes should be made on feature branches:

```text
feature/<name>
fix/<name>
refactor/<name>
docs/<name>
```

Examples:

```text
feature/cpu-opcode-decoder
feature/ppu-renderer
fix/timer-overflow
docs/memory-map
```

Do not commit directly to `main`.

## Commit Messages

Sam-GB-Emu uses Conventional Commits.

Format:

```text
type(scope): description
```

Examples:

```text
feat(cpu): implement ADD instruction
fix(timer): correct divider timing
test(memory): add bus read tests
docs(ppu): document LCD modes
refactor(cartridge): simplify MBC handling
```

Common commit types:

| Type       | Usage                    |
| ---------- | ------------------------ |
| `feat`     | New functionality        |
| `fix`      | Bug fixes                |
| `test`     | Tests                    |
| `docs`     | Documentation            |
| `refactor` | Code restructuring       |
| `perf`     | Performance improvements |
| `chore`    | Maintenance              |

## Code Style

Before committing, ensure:

```bash
cargo fmt
cargo clippy
cargo test
```

Code should:

* Follow idiomatic Rust practices
* Prefer clarity over premature optimisation
* Keep hardware components isolated
* Avoid unnecessary dependencies
* Include tests for new behaviour where appropriate

## Emulator Development Guidelines

When implementing hardware behaviour:

* Prefer accuracy over shortcuts
* Document hardware quirks and timing assumptions
* Reference known Game Boy documentation where possible
* Add tests for edge cases and unusual behaviour

Useful areas to document include:

* CPU timing
* Memory mapping
* PPU modes
* Interrupt behaviour
* Hardware registers

## Testing

Run all tests:

```bash
cargo test
```

For hardware-specific changes, include:

* Unit tests where possible
* Relevant test ROMs
* Debug output or traces when investigating timing issues

## Pull Requests

When submitting changes:

* Keep commits focused
* Explain the reasoning behind hardware decisions
* Include testing information
* Update documentation if behaviour changes

## Project Structure

Major components:

```text
src/
├── cpu/
├── memory/
├── cartridge/
├── boot/
├── ppu/
├── timer/
├── interrupt/
├── joypad/
├── apu/
├── dma/
└── debugger/
```

Each subsystem should remain independent and communicate through clearly defined interfaces.

## Questions and Discussions

For now, development decisions are tracked through:

* GitHub Issues
* Repository documentation
* Commit history

As the project grows, additional contribution guidelines may be added.
