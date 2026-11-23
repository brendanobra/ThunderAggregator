//! Minimal standalone WASM module that exports `add(a, b) -> i32`.
//! Build with: `cargo build --release --target wasm32-unknown-unknown`

#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[cfg(test)]
mod tests {
    use super::add;

    #[test]
    fn adds_numbers() {
        assert_eq!(add(1, 2), 3);
        assert_eq!(add(-10, 7), -3);
    }
}
