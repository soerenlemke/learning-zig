const std = @import("std");

pub fn main() void {
    var a = [_]i32{ 1, 2, 3, 4, 5 };
    var end: usize = 3;
    end += 1;
    var b = a[1..end];
    b = b[1..];
}
