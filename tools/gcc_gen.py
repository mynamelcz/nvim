import os
import re
import json

# 宏定义
DEFINES = ["-DUSE_STD_DRIVER"]

srcs = []
incdirs = []
flags = [
    "-c",
    "-fvisibility=hidden",
    "-O3",
    "-std=gnu11",
    "-nostartfiles",
    "--specs=nosys.specs",
    "-DNDEBUG",
]
sysincdirs = [
    "-IC:/cygwin64/lib/gcc/x86_64-pc-cygwin/11/include",
    "-IC:/cygwin64/lib/gcc/x86_64-pc-cygwin/11/include/c++",
    "-IC:/cygwin64/usr/include",
    "-IC:/cygwin64/usr/include/libusb-1.0",
]

toolchain = "C:/cygwin64/bin/gcc.exe"

project = os.path.abspath(".")
for root, dir, files in os.walk(project):
    for file in files:
        if re.search(r"\.c$|\.s$", file):
            print(os.path.join(root, file))
            srcs.append(os.path.join(root, file))
        if re.search(r"\.h$", file):
            inc = "-I%s" % root
            if inc not in incdirs:
                print(inc)
                incdirs.append(inc)

dump = []
args = []
args.append(toolchain)
args.extend(flags)
for tmp in DEFINES:
    args.append(tmp)
args.extend(sysincdirs)
args.extend(incdirs)
print(args)
for file in srcs:
    d = {}
    d["directory"] = project
    d_args = []
    d_args.extend(args)
    d_args.append("-o %s.o" % file)
    d_args.append(file)
    d["arguments"] = d_args
    d["file"] = file
    dump.append(d)

with open("compile_commands.json", "w") as f:
    json.dump(dump, f, indent=1)
    f.close()
