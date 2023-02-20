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
// const std = @import("std");

// pub fn main() void {
//     var n: u8 = 50;
//     n = n + 5;

//     const pi: f32 = 3.14159;

//     const negative_eleven: i8 = -11;

//     std.debug.print("{} {} {}\n", .{ n, pi, negative_eleven });
// }

///Opgave 4
// const std = @import("std");

// pub fn main() void {
//     // (Problem 1)
//     // This "const" is going to cause a problem later - can you see what it is?
//     // How do we fix it?
//     const some_primes = [_]u8{ 1, 3, 5, 7, 11, 13, 17, 19 };

//     // Individual values can be set with '[]' notation.
//     // Example: This line changes the first prime to 2 (which is correct):
//     some_primes[0] = 2;

//     // Individual values can also be accessed with '[]' notation.
//     // Example: This line stores the first prime in "first":
//     const first = some_primes[0];

//     // (Problem 2)
//     // Looks like we need to complete this expression. Use the example
//     // above to set "fourth" to the fourth element of the some_primes array:
//     const fourth = some_primes[???];

//     // (Problem 3)
//     // Use the len property to get the length of the array:
//     const length = some_primes.???;

//     std.debug.print("First: {}, Fourth: {}, Length: {}\n", .{
//         first, fourth, length,
//     });
// }
/// We are changing const to var so we can change the value at a later date
/// We are åutting 3 into the empty space for the fourth value
/// Finally we are writing len into the last problem to get the lenght of the array
const std = @import("std");

pub fn main() void {
    // (Problem 1)
    // This "const" is going to cause a problem later - can you see what it is?
    // How do we fix it?
    var some_primes = [_]u8{ 1, 3, 5, 7, 11, 13, 17, 19 };

    // Individual values can be set with '[]' notation.
    // Example: This line changes the first prime to 2 (which is correct):
    some_primes[0] = 2;

    // Individual values can also be accessed with '[]' notation.
    // Example: This line stores the first prime in "first":
    const first = some_primes[0];

    // (Problem 2)
    // Looks like we need to complete this expression. Use the example
    // above to set "fourth" to the fourth element of the some_primes array:
    const fourth = some_primes[3];

    // (Problem 3)
    // Use the len property to get the length of the array:
    const length = some_primes.len;

    std.debug.print("First: {}, Fourth: {}, Length: {}\n", .{
        first, fourth, length,
    });
}
