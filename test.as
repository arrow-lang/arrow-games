import libc;

struct Color { r: uint8, g: uint8, b: uint8 }
# struct Renderer { }

# module libtcod {
    extern let TCOD_sepia: Color;
    # extern let TCOD_RENDERER_OPENGL: int32;

    extern let TCOD_console_init_root(int32, int32, str, bool, int32);
    extern let TCOD_console_is_window_closed() -> bool;
# }

implement Color {
    let println(self) -> {
        libc.printf("Color(%d, %d, %d)\n", self.r, self.g, self.b);
    }
}

let main() -> {

    TCOD_console_init_root(
        80, 50, "The Chronicles of Popo Face v1.2", false,
        1);

    while not TCOD_console_is_window_closed() { }

    # let col = libtcod.TCOD_sepia;
    # col.println();

}
