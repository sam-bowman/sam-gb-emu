# Sam-GB-Emu

A Nintendo Game Boy (DMG-01) emulator written in Rust, focused on accurate hardware emulation, clean architecture, and understanding the internals of the original Game Boy system.

## Project Goals

Sam-GB-Emu aims to provide:

* Accurate emulation of the original Game Boy hardware
* A clean and maintainable Rust architecture
* A focus on correctness and hardware behaviour over shortcuts
* Useful debugging and development tools for exploring the system

The emulator targets the original **Nintendo Game Boy (DMG-01)** and its **LR35902 CPU**.

## Features

Currently in development.

### Core Hardware

* [ ] LR35902 CPU emulation
* [ ] Memory bus and address mapping
* [ ] Cartridge loading
* [ ] MBC support
* [ ] Boot ROM support
* [ ] Interrupt handling
* [ ] Timer implementation
* [ ] DMA transfers

### Graphics

* [ ] PPU implementation
* [ ] LCD timing and modes
* [ ] Background rendering
* [ ] Window rendering
* [ ] Sprite rendering

### Audio & Input

* [ ] APU implementation
* [ ] Sound channels
* [ ] Joypad input

### Developer Tools

* [ ] CPU debugger
* [ ] Instruction disassembler
* [ ] Memory viewer
* [ ] Register viewer
* [ ] Breakpoint support
* [ ] Debug logging tools

## Architecture

The emulator is structured around the major Game Boy hardware components:

```
                 Emulator
                    |
        +-----------+-----------+
        |           |           |
       CPU       Memory Bus     PPU
        |           |           |
    LR35902    Cartridge     Renderer
                   |
              Hardware IO
        +----------+----------+
        |          |          |
     Timer    Interrupts    APU
```

Each hardware component is implemented as an independent module and communicates through well-defined interfaces.

## Building

### Requirements

* Rust toolchain
* Cargo

Install Rust:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Clone the repository:

```bash
git clone https://github.com/<username>/Sam-GB-Emu.git
cd Sam-GB-Emu
```

Build:

```bash
cargo build
```

Run:

```bash
cargo run
```

## Testing

Run the test suite:

```bash
cargo test
```

Run formatting checks:

```bash
cargo fmt --check
```

Run linting:

```bash
cargo clippy
```

## Development Status

Sam-GB-Emu is currently in early development.

The initial focus is implementing the CPU, memory system, and core hardware timing before adding graphics, audio, and user-facing features.

## AI Usage Disclosure

AI tools were used during the initial planning and setup of this repository.

AI assistance was used for:

* Designing the repository structure and organisation
* Suggesting development workflows and project conventions
* Creating initial documentation templates and configuration files
* Reviewing project architecture and development practices

All emulator implementation code is written manually.

AI was not used to generate the emulator's source code, including:

* CPU implementation
* Memory bus logic
* Hardware emulation behaviour
* PPU/APU implementation
* Timing logic
* Debugging fixes or compatibility work

The goal of Sam-GB-Emu is to understand and implement the Game Boy hardware architecture through hands-on development, with AI used only as a planning and documentation aid.

## References

Useful resources used during development:

* Pan Docs — Game Boy hardware reference
* Game Boy CPU Manual
* Opcode tables and test ROM collections
* Emulator development documentation

See [`docs/references.md`](docs/references.md) for a full list of resources.

## Contributing

Contributions, suggestions, and discussions are welcome.

Before submitting changes:

```bash
cargo fmt
cargo clippy
cargo test
```

Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for development guidelines.

## Licence

Sam-GB-Emu is released under the MIT License.

See [`LICENSE`](LICENSE) for details.