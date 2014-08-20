import string;
import libc;

let input(): string.String -> {
    let mut buffer = string.String.new();
    let mut c = -1;
    loop {
        c = libc.getchar();
        if c == -1 or c == 0x0a { break; };
        buffer.append(c as char);
    }
    return buffer;
}
