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
/// We are changing const to var so we can change the value at a later date.
/// We are åutting 3 into the empty space for the fourth value.
/// Finally we are writing len into the last problem,
/// to get the lenght of the array.
// const std = @import("std");

// pub fn main() void {
//     // (Problem 1)
//     // This "const" is going to cause a problem later - can you see what it is?
//     // How do we fix it?
//     var some_primes = [_]u8{ 1, 3, 5, 7, 11, 13, 17, 19 };

//     // Individual values can be set with '[]' notation.
//     // Example: This line changes the first prime to 2 (which is correct):
//     some_primes[0] = 2;

//     // Individual values can also be accessed with '[]' notation.
//     // Example: This line stores the first prime in "first":
//     const first = some_primes[0];

//     // (Problem 2)
//     // Looks like we need to complete this expression. Use the example
//     // above to set "fourth" to the fourth element of the some_primes array:
//     const fourth = some_primes[3];

//     // (Problem 3)
//     // Use the len property to get the length of the array:
//     const length = some_primes.len;

//     std.debug.print("First: {}, Fourth: {}, Length: {}\n", .{
//         first, fourth, length,
//     });
// }

///Opgave 5
// const std = @import("std");

// pub fn main() void {
//     const le = [_]u8{ 1, 3 };
//     const et = [_]u8{ 3, 7 };

//     // (Problem 1)
//     // Please set this array concatenating the two arrays above.
//     // It should result in: 1 3 3 7
//     const leet = ???;

//     // (Problem 2)
//     // Please set this array using repetition.
//     // It should result in: 1 0 0 1 1 0 0 1 1 0 0 1
//     const bit_pattern = [_]u8{ ??? } ** 3;

//     // Okay, that's all of the problems. Let's see the results.
//     //
//     // We could print these arrays with leet[0], leet[1],...but let's
//     // have a little preview of Zig 'for' loops instead:
//     //
//     //    for (<item array>) |item| { <do something with item> }
//     //
//     // Don't worry, we'll cover looping properly in upcoming
//     // lessons.
//     //
//     std.debug.print("LEET: ", .{});

//     for (leet) |n| {
//         std.debug.print("{}", .{n});
//     }

//     std.debug.print(", Bits: ", .{});

//     for (bit_pattern) |n| {
//         std.debug.print("{}", .{n});
//     }

//     std.debug.print("\n", .{});
// const std = @import("std");

// pub fn main() void {
//     const le = [_]u8{ 1, 3 };
//     const et = [_]u8{ 3, 7 };

//     // (Problem 1)
//     // Please set this array concatenating the two arrays above.
//     // It should result in: 1 3 3 7
//     const leet = le ++ et ++ [_]u8{ };

//     // (Problem 2)
//     // Please set this array using repetition.
//     // It should result in: 1 0 0 1 1 0 0 1 1 0 0 1
//     const bit_pattern = [_]u8{ 1,0,0,1 } ** 3;

//     // Okay, that's all of the problems. Let's see the results.
//     //
//     // We could print these arrays with leet[0], leet[1],...but let's
//     // have a little preview of Zig 'for' loops instead:
//     //
//     //    for (<item array>) |item| { <do something with item> }
//     //
//     // Don't worry, we'll cover looping properly in upcoming
//     // lessons.
//     //
//     std.debug.print("LEET: ", .{});

//     for (leet) |n| {
//         std.debug.print("{}", .{n});
//     }

//     std.debug.print(", Bits: ", .{});

//     for (bit_pattern) |n| {
//         std.debug.print("{}", .{n});
//     }

//     std.debug.print("\n", .{});
// }

///Opgave 6
// const std = @import("std");

// pub fn main() void {
//     const ziggy = "stardust";

//     // (Problem 1)
//     // Use array square bracket syntax to get the letter 'd' from
//     // the string "stardust" above.
//     const d: u8 = ziggy[???];

//     // (Problem 2)
//     // Use the array repeat '**' operator to make "ha ha ha ".
//     const laugh = "ha " ???;

//     // (Problem 3)
//     // Use the array concatenation '++' operator to make "Major Tom".
//     // (You'll need to add a space as well!)
//     const major = "Major";
//     const tom = "Tom";
//     const major_tom = major ??? tom;

//     // That's all the problems. Let's see our results:
//     std.debug.print("d={u} {s}{s}\n", .{ d, laugh, major_tom });
//     // Keen eyes will notice that we've put 'u' and 's' inside the '{}'
//     // placeholders in the format string above. This tells the
//     // print() function to format the values as a UTF-8 character and
//     // UTF-8 strings respectively. If we didn't do this, we'd see '100',
//     // which is the decimal number corresponding with the 'd' character
//     // in UTF-8. (And an error in the case of the strings.)
//     //
//     // While we're on this subject, 'c' (ASCII encoded character)
//     // would work in place for 'u' because the first 128 characters
//     // of UTF-8 are the same as ASCII!
//     //
// }
// const std = @import("std");

// pub fn main() void {
//     const ziggy = "stardust";

//     // (Problem 1)
//     // Use array square bracket syntax to get the letter 'd' from
//     // the string "stardust" above.
//     const d: u8 = ziggy[4];

//     // (Problem 2)
//     // Use the array repeat '**' operator to make "ha ha ha ".
//     const laugh = "ha " ** 3;

//     // (Problem 3)
//     // Use the array concatenation '++' operator to make "Major Tom".
//     // (You'll need to add a space as well!)
//     const major = "Major ";
//     const tom = "Tom";
//     const major_tom = major ++ tom;

//     // That's all the problems. Let's see our results:
//     std.debug.print("d={u} {s}{s}\n", .{ d, laugh, major_tom });
//     // Keen eyes will notice that we've put 'u' and 's' inside the '{}'
//     // placeholders in the format string above. This tells the
//     // print() function to format the values as a UTF-8 character and
//     // UTF-8 strings respectively. If we didn't do this, we'd see '100',
//     // which is the decimal number corresponding with the 'd' character
//     // in UTF-8. (And an error in the case of the strings.)
//     //
//     // While we're on this subject, 'c' (ASCII encoded character)
//     // would work in place for 'u' because the first 128 characters
//     // of UTF-8 are the same as ASCII!
//     //
// }

///Opgave 7
// const std = @import("std");

// pub fn main() void {
//     const lyrics =
//         Ziggy played guitar
//         Jamming good with Andrew Kelley
//         And the Spiders from Mars
//     ;

//     std.debug.print("{s}\n", .{lyrics});
// }
// const std = @import("std");

// pub fn main() void {

//     const lyrics = 
//         \\Ziggy played guitar
//         \\Jamming good with Andrew Kelley
//         \\And the Spiders from Mars
//     ;

//     std.debug.print("{s}\n", .{lyrics});
// }

///Opgave 8
// const std = @import("std");

// pub fn main() void {
//     // What is this nonsense? :-)
//     const letters = "YZhifg";

//     // Note: usize is an unsigned integer type used for...sizes.
//     // The exact size of usize depends on the target CPU
//     // architecture. We could have used a u8 here, but usize is
//     // the idiomatic type to use for array indexing.
//     //
//     // There IS a problem on this line, but 'usize' isn't it.
//     const x: usize = 1;

//     // Note: When you want to declare memory (an array in this
//     // case) without putting anything in it, you can set it to
//     // 'undefined'. There is no problem on this line.
//     var lang: [3]u8 = undefined;

//     // The following lines attempt to put 'Z', 'i', and 'g' into the
//     // 'lang' array we just created by indexing the array
//     // 'letters' with the variable 'x'. As you can see above, x=1
//     // to begin with.
//     lang[0] = letters[x];

//     x = 3;
//     lang[???] = letters[x];

//     x = ???;
//     lang[2] = letters[???];

//     // We want to "Program in Zig!" of course:
//     std.debug.print("Program in {s}!\n", .{lang});
// }
// const std = @import("std");

// pub fn main() void {
//     // What is this nonsense? :-)
//     const letters = "YZhifg";

//     // Note: usize is an unsigned integer type used for...sizes.
//     // The exact size of usize depends on the target CPU
//     // architecture. We could have used a u8 here, but usize is
//     // the idiomatic type to use for array indexing.
//     //
//     // There IS a problem on this line, but 'usize' isn't it.
//     var x: usize = 1;

//     // Note: When you want to declare memory (an array in this
//     // case) without putting anything in it, you can set it to
//     // 'undefined'. There is no problem on this line.
//     var lang: [3]u8 = undefined;

//     // The following lines attempt to put 'Z', 'i', and 'g' into the
//     // 'lang' array we just created by indexing the array
//     // 'letters' with the variable 'x'. As you can see above, x=1
//     // to begin with.
//     lang[0] = letters[x];

//     x = 3;
//     lang[1] = letters[x];

//     x = 5;
//     lang[2] = letters[x];

//     // We want to "Program in Zig!" of course:
//     std.debug.print("Program in {s}!\n", .{lang});
// }

///Opgave 9
// const std = @import("std");

// pub fn main() void {
//     const foo = 1;

//     // Please fix this condition:
//     if (foo) {
//         // We want our program to print this message!
//         std.debug.print("Foo is 1!\n", .{});
//     } else {
//         std.debug.print("Foo is not 1!\n", .{});
//     }
// }
// const std = @import("std");

// pub fn main() void {
//     const foo = 1;

//     // Please fix this condition:
//     if (foo == 1) {
//         // We want our program to print this message!
//         std.debug.print("Foo is 1!\n", .{});
//     } else {
//         std.debug.print("Foo is not 1!\n", .{});
//     }
// }

///Opgave 10
//
// If statements are also valid expressions:
//
//     var foo: u8 = if (a) 2 else 3;
//
// const std = @import("std");

// pub fn main() void {
//     var discount = true;

//     // Please use an if...else expression to set "price".
//     // If discount is true, the price should be $17, otherwise $20:
//     var price: u8 = if ???;

//     std.debug.print("With the discount, the price is ${}.\n", .{price});
// }

// const std = @import("std");

// pub fn main() void {
//     var discount = true;

//     // Please use an if...else expression to set "price".
//     // If discount is true, the price should be $17, otherwise $20:
//     var price: u8 = undefined;
//     if(discount == true){
//         price = 17;
//     }
//     else{
//         price = 20;
//     }

//     std.debug.print("With the discount, the price is ${}.\n", .{price});
// }

// const std = @import("std");

// pub fn main() void {
//     var discount = true;

//     // Please use an if...else expression to set "price".
//     // If discount is true, the price should be $17, otherwise $20:
//     var price: u8 = if (discount) 17 else 20;

//     std.debug.print("With the discount, the price is ${}.\n", .{price});
// }

///Opgave 11
//
// Zig 'while' statements create a loop that runs while the
// condition is true. This runs once (at most):
//
//     while (condition) {
//         condition = false;
//     }
//
// Remember that the condition must be a boolean value and
// that we can get a boolean value from conditional operators
// such as:
//
//     a == b   means "a equals b"
//     a < b    means "a is less than b"
//     a > b    means "a is greater than b"
//     a != b   means "a does not equal b"
//
// const std = @import("std");

// pub fn main() void {
//     var n: u32 = 2;

//     // Please use a condition that is true UNTIL "n" reaches 1024:
//     while (???) {
//         // Print the current number
//         std.debug.print("{} ", .{n});

//         // Set n to n multiplied by 2
//         n *= 2;
//     }

//     // Once the above is correct, this will print "n=1024"
//     std.debug.print("n={}\n", .{n});
// }
const std = @import("std");

pub fn main() void {
    var n: u32 = 2;

    // Please use a condition that is true UNTIL "n" reaches 1024:
    while (n < 1024) {
        // Print the current number
        std.debug.print("{} ", .{n});

        // Set n to n multiplied by 2
        n *= 2;
    }

    // Once the above is correct, this will print "n=1024"
    std.debug.print("n={}\n", .{n});
}