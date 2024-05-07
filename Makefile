# Target: main.out
# Depends on: main
# Command: ./main | tee main.out
main.out: main
	./main | tee main.out

# Target: main
# Depends on: main.o get_student_id.o
# Command: cc -o main main.o get_student_id.o
main: main.o get_student_id.o
	cc -o main main.o get_student_id.o

# Target: main.o
# Depends on: main.c
# Command: cc -c main.c
main.o: main.c
	cc -c main.c

# Target: get_student_id.o
# Depends on: get_student_id.c
# Command: cc -c get_student_id.c
get_student_id.o: get_student_id.c
	cc -c get_student_id.c
