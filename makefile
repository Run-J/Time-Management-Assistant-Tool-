# ==============================================
# This Makefile is used for the Scheduler Project
# ==============================================

# ==============================================
# 1. Instructions to build the final Scheduler
# application - link object files into an executable
# ==============================================
./bin/scheduler: ./obj/drive.o ./obj/BST.o ./obj/Schedule.o ./obj/Hash.o
	cc ./obj/drive.o ./obj/BST.o ./obj/Schedule.o ./obj/Hash.o -o ./bin/scheduler

# ==============================================
# 2. Instructions for compiling dependencies
# for the final Scheduler binary
# ==============================================
./obj/drive.o: ./src/drive.c ./inc/Hash.h ./inc/BST.h ./inc/Schedule.h
	cc -c ./src/drive.c -I./inc -o ./obj/drive.o

./obj/BST.o: ./src/BST.c ./inc/BST.h
	cc -c ./src/BST.c -I./inc -o ./obj/BST.o

./obj/Schedule.o: ./src/Schedule.c ./inc/Schedule.h
	cc -c ./src/Schedule.c -I./inc -o ./obj/Schedule.o

./obj/Hash.o: ./src/Hash.c ./inc/Hash.h
	cc -c ./src/Hash.c -I./inc -o ./obj/Hash.o

# ==============================================
# 3. Useful "extra" commands
# ==============================================
clean:
	rm -f ./obj/*.o
	rm -f ./bin/*