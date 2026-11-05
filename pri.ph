
print("================================")
print("   STUDENT RESULT MANAGEMENT")
print("================================")

name = input("Enter Student Name: ")
roll = input("Enter Roll Number: ")

subjects = ["Python", "C++", "Data Structure", "DBMS", "Computer Networks"]

marks = []

for subject in subjects:
    while True:
        try:
            mark = float(input(f"Enter marks in {subject} (0-100): "))
            if 0 <= mark <= 100:
                marks.append(mark)
                break
            else:
                print("Please enter marks between 0 and 100.")
        except ValueError:
            print("Please enter a valid number.")

total = sum(marks)
percentage = total / len(subjects)

if min(marks) < 33:
    grade = "F"
    result = "FAIL"
elif percentage >= 90:
    grade = "A+"
    result = "PASS"
elif percentage >= 80:
    grade = "A"
    result = "PASS"
elif percentage >= 70:
    grade = "B"
    result = "PASS"
elif percentage >= 60:
    grade = "C"
    result = "PASS"
elif percentage >= 50:
    grade = "D"
    result = "PASS"
else:
    grade = "E"
    result = "PASS"

print("\n========== RESULT ==========")
print("Student Name:", name)
print("Roll Number:", roll)
print("Total Marks:", total, "/ 500")
print("Percentage:", round(percentage, 2), "%")
print("Grade:", grade)
print("Result:", result)
print("============================")