## Keil/MDK嵌入式程序

### 生成 compiler_commands.json
     xmake project -k compile_commands

### ARM
#### CMD
    xmake f -p cross -a cortex-m4 --toolchain=armcc -c
    xmake f -p cross -a cortex-m4 --toolchain=armclang -c

#### lua
    target("hello")
        add_deps("foo")
        add_rules("mdk.binary")
        add_files("src/*.c", "src/*.s")
        add_includedirs("src/lib/cmsis")
        set_runtimes("microlib")
### C51
    target("hello")
        add_rules("c51.binary")
        set_toolchains("c51")
        add_files("src/main.c")

### 自动探测和编译
    xmake 可以自动识别工具链目录结构
    xmake f -p cross --sdk=/home/toolchains_sdkdir


### 设置编译选项
    cflags: 指定c编译参数
    cxxflags: 指定c++编译参数
    cxflags: 指定c/c++编译参数
    asflags: 指定汇编编译参数
    ldflags: 指定可执行程序链接参数
    shflags: 指定动态链接程序链接参数
    arflags: 指定静态链接程序链接参数


### 交叉编译设置
    --sdk   设置交叉编译SDK目录
    --bin   设置工具链bin目录
    --cross 设置工具链前缀
    --as    设置asm汇编器
    --cc    设置c编译器
    --cxx   设置c++编译器
    --mm    设置objc编译器
    --mxx   设置objc++编译器
    --ld    设置c/c++/objc/asm链接器
    --sh    设置c/c++/objc/asm共享库链接器
    --ar    设置c/c++/objc/asm静态库归档器
    --cflags
    --cxflags
    --cxxflags
    --ldflags
    --shflags
    --arflags
