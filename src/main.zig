const std = @import("std");

//Opgave 1 
//const std = @import("std");

// fn main() void {
//     std.debug.print("Hello world!\n", .{});
// }
//Here we can see it is missing the pub making it public
 pub fn main() void {
   std.debug.print("Hello {s}\n", .{"World"}); 
}


