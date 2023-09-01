const std = @import("std");
const String = @import("./zig-string.zig").String;

pub fn main() !void {
    var allocator = std.heap.page_allocator;
    var arena = std.heap.ArenaAllocator.init(allocator);

    var slice = "sossooossssoo";
    var string = try String.from_slice(arena.allocator(), slice);
    var first_split = try string.split('o');
    std.debug.print("{s}", .{first_split[0].data});
}
