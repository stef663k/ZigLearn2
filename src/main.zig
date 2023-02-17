//Opgave 1 
//const std = @import("std");

// fn main() void {
//     std.debug.print("Hello world!\n", .{});
// }
//Here we can see it is missing the pub making it public

//Opgave 2
// ??? = @import("std");

// pub fn main() void {
//     std.debug.print("Standard Library.\n", .{});
// }
//Here we can see that we need to set import as a constant
const std = @import("std");

 pub fn main() void {
   std.debug.print("Hello {s}\n", .{"World"}); 
}


