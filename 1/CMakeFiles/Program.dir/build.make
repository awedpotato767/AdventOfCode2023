# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/charlieh/Documents/_Alevel/Advent of code 2023/1"

# Include any dependencies generated for this target.
include CMakeFiles/Program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Program.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Program.dir/flags.make

CMakeFiles/Program.dir/main.c.o: CMakeFiles/Program.dir/flags.make
CMakeFiles/Program.dir/main.c.o: /home/charlieh/Documents/_Alevel/Advent\ of\ code\ 2023/1/src/main.c
CMakeFiles/Program.dir/main.c.o: CMakeFiles/Program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/charlieh/Documents/_Alevel/Advent of code 2023/1/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Program.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Program.dir/main.c.o -MF CMakeFiles/Program.dir/main.c.o.d -o CMakeFiles/Program.dir/main.c.o -c "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src/main.c"

CMakeFiles/Program.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Program.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src/main.c" > CMakeFiles/Program.dir/main.c.i

CMakeFiles/Program.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Program.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src/main.c" -o CMakeFiles/Program.dir/main.c.s

# Object files for target Program
Program_OBJECTS = \
"CMakeFiles/Program.dir/main.c.o"

# External object files for target Program
Program_EXTERNAL_OBJECTS =

Program: CMakeFiles/Program.dir/main.c.o
Program: CMakeFiles/Program.dir/build.make
Program: CMakeFiles/Program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/charlieh/Documents/_Alevel/Advent of code 2023/1/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Program"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Program.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Program.dir/build: Program
.PHONY : CMakeFiles/Program.dir/build

CMakeFiles/Program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Program.dir/clean

CMakeFiles/Program.dir/depend:
	cd "/home/charlieh/Documents/_Alevel/Advent of code 2023/1" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src" "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/src" "/home/charlieh/Documents/_Alevel/Advent of code 2023/1" "/home/charlieh/Documents/_Alevel/Advent of code 2023/1" "/home/charlieh/Documents/_Alevel/Advent of code 2023/1/CMakeFiles/Program.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Program.dir/depend
