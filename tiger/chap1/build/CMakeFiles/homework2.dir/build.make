# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eyk/桌面/编译器/tiger/chap1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eyk/桌面/编译器/tiger/chap1/build

# Include any dependencies generated for this target.
include CMakeFiles/homework2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/homework2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/homework2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/homework2.dir/flags.make

CMakeFiles/homework2.dir/src/homework1.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/homework1.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/homework1.c
CMakeFiles/homework2.dir/src/homework1.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/homework2.dir/src/homework1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/homework1.c.o -MF CMakeFiles/homework2.dir/src/homework1.c.o.d -o CMakeFiles/homework2.dir/src/homework1.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/homework1.c

CMakeFiles/homework2.dir/src/homework1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/homework1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/homework1.c > CMakeFiles/homework2.dir/src/homework1.c.i

CMakeFiles/homework2.dir/src/homework1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/homework1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/homework1.c -o CMakeFiles/homework2.dir/src/homework1.c.s

CMakeFiles/homework2.dir/src/homework2.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/homework2.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/homework2.c
CMakeFiles/homework2.dir/src/homework2.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/homework2.dir/src/homework2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/homework2.c.o -MF CMakeFiles/homework2.dir/src/homework2.c.o.d -o CMakeFiles/homework2.dir/src/homework2.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/homework2.c

CMakeFiles/homework2.dir/src/homework2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/homework2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/homework2.c > CMakeFiles/homework2.dir/src/homework2.c.i

CMakeFiles/homework2.dir/src/homework2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/homework2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/homework2.c -o CMakeFiles/homework2.dir/src/homework2.c.s

CMakeFiles/homework2.dir/src/main.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/main.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/main.c
CMakeFiles/homework2.dir/src/main.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/homework2.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/main.c.o -MF CMakeFiles/homework2.dir/src/main.c.o.d -o CMakeFiles/homework2.dir/src/main.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/main.c

CMakeFiles/homework2.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/main.c > CMakeFiles/homework2.dir/src/main.c.i

CMakeFiles/homework2.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/main.c -o CMakeFiles/homework2.dir/src/main.c.s

CMakeFiles/homework2.dir/src/prog1.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/prog1.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/prog1.c
CMakeFiles/homework2.dir/src/prog1.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/homework2.dir/src/prog1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/prog1.c.o -MF CMakeFiles/homework2.dir/src/prog1.c.o.d -o CMakeFiles/homework2.dir/src/prog1.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/prog1.c

CMakeFiles/homework2.dir/src/prog1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/prog1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/prog1.c > CMakeFiles/homework2.dir/src/prog1.c.i

CMakeFiles/homework2.dir/src/prog1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/prog1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/prog1.c -o CMakeFiles/homework2.dir/src/prog1.c.s

CMakeFiles/homework2.dir/src/slp.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/slp.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/slp.c
CMakeFiles/homework2.dir/src/slp.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/homework2.dir/src/slp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/slp.c.o -MF CMakeFiles/homework2.dir/src/slp.c.o.d -o CMakeFiles/homework2.dir/src/slp.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/slp.c

CMakeFiles/homework2.dir/src/slp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/slp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/slp.c > CMakeFiles/homework2.dir/src/slp.c.i

CMakeFiles/homework2.dir/src/slp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/slp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/slp.c -o CMakeFiles/homework2.dir/src/slp.c.s

CMakeFiles/homework2.dir/src/util.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/src/util.c.o: /home/eyk/桌面/编译器/tiger/chap1/src/util.c
CMakeFiles/homework2.dir/src/util.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/homework2.dir/src/util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/src/util.c.o -MF CMakeFiles/homework2.dir/src/util.c.o.d -o CMakeFiles/homework2.dir/src/util.c.o -c /home/eyk/桌面/编译器/tiger/chap1/src/util.c

CMakeFiles/homework2.dir/src/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/src/util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/src/util.c > CMakeFiles/homework2.dir/src/util.c.i

CMakeFiles/homework2.dir/src/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/src/util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/src/util.c -o CMakeFiles/homework2.dir/src/util.c.s

CMakeFiles/homework2.dir/test/test.c.o: CMakeFiles/homework2.dir/flags.make
CMakeFiles/homework2.dir/test/test.c.o: /home/eyk/桌面/编译器/tiger/chap1/test/test.c
CMakeFiles/homework2.dir/test/test.c.o: CMakeFiles/homework2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/homework2.dir/test/test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/homework2.dir/test/test.c.o -MF CMakeFiles/homework2.dir/test/test.c.o.d -o CMakeFiles/homework2.dir/test/test.c.o -c /home/eyk/桌面/编译器/tiger/chap1/test/test.c

CMakeFiles/homework2.dir/test/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/homework2.dir/test/test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eyk/桌面/编译器/tiger/chap1/test/test.c > CMakeFiles/homework2.dir/test/test.c.i

CMakeFiles/homework2.dir/test/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/homework2.dir/test/test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eyk/桌面/编译器/tiger/chap1/test/test.c -o CMakeFiles/homework2.dir/test/test.c.s

# Object files for target homework2
homework2_OBJECTS = \
"CMakeFiles/homework2.dir/src/homework1.c.o" \
"CMakeFiles/homework2.dir/src/homework2.c.o" \
"CMakeFiles/homework2.dir/src/main.c.o" \
"CMakeFiles/homework2.dir/src/prog1.c.o" \
"CMakeFiles/homework2.dir/src/slp.c.o" \
"CMakeFiles/homework2.dir/src/util.c.o" \
"CMakeFiles/homework2.dir/test/test.c.o"

# External object files for target homework2
homework2_EXTERNAL_OBJECTS =

/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/homework1.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/homework2.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/main.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/prog1.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/slp.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/src/util.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/test/test.c.o
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/build.make
/home/eyk/桌面/编译器/tiger/chap1/bin/homework2: CMakeFiles/homework2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable /home/eyk/桌面/编译器/tiger/chap1/bin/homework2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/homework2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/homework2.dir/build: /home/eyk/桌面/编译器/tiger/chap1/bin/homework2
.PHONY : CMakeFiles/homework2.dir/build

CMakeFiles/homework2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/homework2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/homework2.dir/clean

CMakeFiles/homework2.dir/depend:
	cd /home/eyk/桌面/编译器/tiger/chap1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eyk/桌面/编译器/tiger/chap1 /home/eyk/桌面/编译器/tiger/chap1 /home/eyk/桌面/编译器/tiger/chap1/build /home/eyk/桌面/编译器/tiger/chap1/build /home/eyk/桌面/编译器/tiger/chap1/build/CMakeFiles/homework2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/homework2.dir/depend

