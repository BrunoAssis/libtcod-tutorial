#OBJS specifies which files to compile as part of the project
OBJS = src/*.cpp

#CC specifies which compiler we're using
CC = g++

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -Wall

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -ltcod -ltcodxx

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = game

# OS X specific settings
INCLUDE_DIR = -Iinclude -I/usr/local/include
LIB_DIR = -L. -L/usr/local/lib

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(INCLUDE_DIR) $(LIB_DIR) $(LINKER_FLAGS) -o $(OBJ_NAME)
