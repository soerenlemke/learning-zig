//! first program from openmymind learning zig

const std = @import("std");

const SUPER_POWER = 9000;

/// pub fn main needed for not getting compiler error
pub fn main() void {
    const user: User = .{
        .power = 9001,
        .name = "Goku",
    };

    std.debug.print("{s}`s power is {d}\n", .{ user.name, user.power });

    user.diagnose();

    const a = 8999;
    const b = 2;
    const sum = add(a, b);
    std.debug.print("{d} + {d} = {d}\n", .{ a, b, sum });
}

/// User struct
const User = struct {
    power: u64,
    name: []const u8,

    pub fn init(name: []const u8, power: u64) User {
        return .{
            .name = name,
            .power = power,
        };
    }

    pub fn diagnose(user: User) void {
        if (user.power >= SUPER_POWER) {
            std.debug.print("it`s over {d}!!!\n", .{SUPER_POWER});
        }
    }
};

/// simple add function
fn add(a: i64, b: i64) i64 {
    return a + b;
}
