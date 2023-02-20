///Opgave 1 
//const std = @import("std");

// fn main() void {
//     std.debug.print("Hello world!\n", .{});
// }
///Here we can see it is missing the pub making it public
//  pub fn main() void {
//    std.debug.print("Hello {s}\n", .{"World"}); 
// }

///Opgave 2
// ??? = @import("std");

// pub fn main() void {
//     std.debug.print("Standard Library.\n", .{});
// }
///Here we can see that we need to set import as a constant
///const std = @import("std");

///Opgave 3
// const std = @import("std");

// pub fn main() void {
//     const n: u8 = 50;
//     n = n + 5;

//     const pi: u8 = 314159;

//     const negative_eleven: u8 = -11;

//     std.debug.print("{} {} {}\n", .{ n, pi, negative_eleven });
// }
///We can see that they start changing a constant, which you cannot, 
///they then places too high a number in const pi
///They then assign an assigned integer and making it negative
///Pi was also not a decimal or in this case a float
const std = @import("std");

pub fn main() void {
    var n: u8 = 50;
    n = n + 5;

    const pi: f32 = 3.14159;

    const negative_eleven: i8 = -11;

    std.debug.print("{} {} {}\n", .{ n, pi, negative_eleven });
}

