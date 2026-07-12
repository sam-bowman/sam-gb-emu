//! Sam-GB-Emu library.
//!
//! Core Game Boy emulator components will live here.

pub mod emulator;

pub fn version() -> &'static str {
    env!("CARGO_PKG_VERSION")
}