const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("zig-string", .{
        .source_file = .{ .path = "zig-string.zig" },
        .dependencies = &[_]std.Build.ModuleDependency{},
    });
}
