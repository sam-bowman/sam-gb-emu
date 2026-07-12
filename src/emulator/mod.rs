//! Top-level emulator system.

pub struct Emulator {
    running: bool,
}

impl Emulator {
    pub fn new() -> Self {
        Self {
            running: false,
        }
    }

    pub fn run(&mut self) {
        self.running = true;
    }

    pub fn is_running(&self) -> bool {
        self.running
    }
}