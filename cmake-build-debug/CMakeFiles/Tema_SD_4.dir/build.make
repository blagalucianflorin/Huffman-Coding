# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/lblaga/Workspace/Programs/clion-2019.3.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/lblaga/Workspace/Programs/clion-2019.3.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/lblaga/CLionProjects/Tema SD 4"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Tema_SD_4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tema_SD_4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tema_SD_4.dir/flags.make

CMakeFiles/Tema_SD_4.dir/main.cpp.o: CMakeFiles/Tema_SD_4.dir/flags.make
CMakeFiles/Tema_SD_4.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tema_SD_4.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tema_SD_4.dir/main.cpp.o -c "/home/lblaga/CLionProjects/Tema SD 4/main.cpp"

CMakeFiles/Tema_SD_4.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tema_SD_4.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/lblaga/CLionProjects/Tema SD 4/main.cpp" > CMakeFiles/Tema_SD_4.dir/main.cpp.i

CMakeFiles/Tema_SD_4.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tema_SD_4.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/lblaga/CLionProjects/Tema SD 4/main.cpp" -o CMakeFiles/Tema_SD_4.dir/main.cpp.s

CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o: CMakeFiles/Tema_SD_4.dir/flags.make
CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o: ../sources/huffman.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o -c "/home/lblaga/CLionProjects/Tema SD 4/sources/huffman.cpp"

CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/lblaga/CLionProjects/Tema SD 4/sources/huffman.cpp" > CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.i

CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/lblaga/CLionProjects/Tema SD 4/sources/huffman.cpp" -o CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.s

# Object files for target Tema_SD_4
Tema_SD_4_OBJECTS = \
"CMakeFiles/Tema_SD_4.dir/main.cpp.o" \
"CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o"

# External object files for target Tema_SD_4
Tema_SD_4_EXTERNAL_OBJECTS =

Tema_SD_4: CMakeFiles/Tema_SD_4.dir/main.cpp.o
Tema_SD_4: CMakeFiles/Tema_SD_4.dir/sources/huffman.cpp.o
Tema_SD_4: CMakeFiles/Tema_SD_4.dir/build.make
Tema_SD_4: CMakeFiles/Tema_SD_4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Tema_SD_4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tema_SD_4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tema_SD_4.dir/build: Tema_SD_4

.PHONY : CMakeFiles/Tema_SD_4.dir/build

CMakeFiles/Tema_SD_4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tema_SD_4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tema_SD_4.dir/clean

CMakeFiles/Tema_SD_4.dir/depend:
	cd "/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/lblaga/CLionProjects/Tema SD 4" "/home/lblaga/CLionProjects/Tema SD 4" "/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug" "/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug" "/home/lblaga/CLionProjects/Tema SD 4/cmake-build-debug/CMakeFiles/Tema_SD_4.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Tema_SD_4.dir/depend

