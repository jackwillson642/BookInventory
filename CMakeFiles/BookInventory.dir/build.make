# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/jack/desktop/learning_c++/BookInventory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jack/desktop/learning_c++/BookInventory

# Include any dependencies generated for this target.
include CMakeFiles/BookInventory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BookInventory.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BookInventory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BookInventory.dir/flags.make

CMakeFiles/BookInventory.dir/src/Functions.cpp.o: CMakeFiles/BookInventory.dir/flags.make
CMakeFiles/BookInventory.dir/src/Functions.cpp.o: src/Functions.cpp
CMakeFiles/BookInventory.dir/src/Functions.cpp.o: CMakeFiles/BookInventory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jack/desktop/learning_c++/BookInventory/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BookInventory.dir/src/Functions.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BookInventory.dir/src/Functions.cpp.o -MF CMakeFiles/BookInventory.dir/src/Functions.cpp.o.d -o CMakeFiles/BookInventory.dir/src/Functions.cpp.o -c /home/jack/desktop/learning_c++/BookInventory/src/Functions.cpp

CMakeFiles/BookInventory.dir/src/Functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BookInventory.dir/src/Functions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jack/desktop/learning_c++/BookInventory/src/Functions.cpp > CMakeFiles/BookInventory.dir/src/Functions.cpp.i

CMakeFiles/BookInventory.dir/src/Functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BookInventory.dir/src/Functions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jack/desktop/learning_c++/BookInventory/src/Functions.cpp -o CMakeFiles/BookInventory.dir/src/Functions.cpp.s

CMakeFiles/BookInventory.dir/src/Main.cpp.o: CMakeFiles/BookInventory.dir/flags.make
CMakeFiles/BookInventory.dir/src/Main.cpp.o: src/Main.cpp
CMakeFiles/BookInventory.dir/src/Main.cpp.o: CMakeFiles/BookInventory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jack/desktop/learning_c++/BookInventory/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BookInventory.dir/src/Main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BookInventory.dir/src/Main.cpp.o -MF CMakeFiles/BookInventory.dir/src/Main.cpp.o.d -o CMakeFiles/BookInventory.dir/src/Main.cpp.o -c /home/jack/desktop/learning_c++/BookInventory/src/Main.cpp

CMakeFiles/BookInventory.dir/src/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BookInventory.dir/src/Main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jack/desktop/learning_c++/BookInventory/src/Main.cpp > CMakeFiles/BookInventory.dir/src/Main.cpp.i

CMakeFiles/BookInventory.dir/src/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BookInventory.dir/src/Main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jack/desktop/learning_c++/BookInventory/src/Main.cpp -o CMakeFiles/BookInventory.dir/src/Main.cpp.s

# Object files for target BookInventory
BookInventory_OBJECTS = \
"CMakeFiles/BookInventory.dir/src/Functions.cpp.o" \
"CMakeFiles/BookInventory.dir/src/Main.cpp.o"

# External object files for target BookInventory
BookInventory_EXTERNAL_OBJECTS =

BookInventory: CMakeFiles/BookInventory.dir/src/Functions.cpp.o
BookInventory: CMakeFiles/BookInventory.dir/src/Main.cpp.o
BookInventory: CMakeFiles/BookInventory.dir/build.make
BookInventory: CMakeFiles/BookInventory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jack/desktop/learning_c++/BookInventory/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable BookInventory"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BookInventory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BookInventory.dir/build: BookInventory
.PHONY : CMakeFiles/BookInventory.dir/build

CMakeFiles/BookInventory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BookInventory.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BookInventory.dir/clean

CMakeFiles/BookInventory.dir/depend:
	cd /home/jack/desktop/learning_c++/BookInventory && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jack/desktop/learning_c++/BookInventory /home/jack/desktop/learning_c++/BookInventory /home/jack/desktop/learning_c++/BookInventory /home/jack/desktop/learning_c++/BookInventory /home/jack/desktop/learning_c++/BookInventory/CMakeFiles/BookInventory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BookInventory.dir/depend

