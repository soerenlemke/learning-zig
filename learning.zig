const std = @import("std");

pub fn main() void {
    std.debug.print("{}\n", .{.{ .year = 2023, .month = 8 }});
}
