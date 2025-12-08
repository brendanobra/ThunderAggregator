use std::ffi::c_char;
use std::ptr;
use std::slice;

static MESSAGE: &str = "Hello from Rust 👋";

#[no_mangle]
pub extern "C" fn rust_hello(buf: *mut c_char, len: usize) {
    if buf.is_null() || len == 0 {
        return;
    }

    // Copy MESSAGE (UTF-8) into caller buffer, null-terminated
    let bytes = MESSAGE.as_bytes();
    let max = len.saturating_sub(1); // leave room for '\0'
    let to_copy = bytes.len().min(max);

    unsafe {
        let dst = slice::from_raw_parts_mut(buf as *mut u8, len);
        ptr::write_bytes(dst.as_mut_ptr(), 0, len); // zero buffer
        dst[..to_copy].copy_from_slice(&bytes[..to_copy]);
        // last byte is already 0 from write_bytes
    }
}

