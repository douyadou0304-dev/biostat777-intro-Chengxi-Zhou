#!/bin/bash
# ============================================================
# Project 1 - Part 2

# ============================================================
# 1. Use wget or curl to download the students.csv file locally
# ============================================================
curl -L -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv
echo


# ============================================================
# 2. Display the contents of the students.csv file using the cat command
# ============================================================
echo "=========================================="
echo " Step 2: Display the contents of students.csv"
echo "=========================================="
cat students.csv
echo


# ============================================================
# 3. Display only the first 5 lines of the file using head
# ============================================================
echo "=========================================="
echo " Step 3: Display the first 5 lines"
echo "=========================================="
head -n 5 students.csv
echo


# ============================================================
# 4. Display only the last 3 lines of the file using tail
# ============================================================
echo "=========================================="
echo " Step 4: Display the last 3 lines"
echo "=========================================="
tail -n 3 students.csv
echo


# ============================================================
# 5. Count the number of lines in the file using wc
# ============================================================
echo "=========================================="
echo " Step 5: Count the number of lines"
echo "=========================================="
wc -l students.csv
echo


# ============================================================
# 6. Find all students who are taking “Math” as a subject using grep
# ============================================================
echo "=========================================="
echo " Step 6: Find students taking Math"
echo "=========================================="
grep "Math" students.csv
echo


# ============================================================
# 7. Find all female students using grep or awk to filter based on gender
# ============================================================
echo "=========================================="
echo " Step 7: Find all female students (Gender = F)"
echo "=========================================="
grep ",F," students.csv
echo


# ============================================================
# 8. Sort the file by the students’ ages in ascending order using sort
# ============================================================
echo "=========================================="
echo " Step 8: Sort students by age (ascending)"
echo "=========================================="
sort -t, -k3,3n students.csv
echo


# ============================================================
# 9. Find the unique subjects listed in the file using cut, sort, and uniq
# ============================================================
echo "=========================================="
echo " Step 9: Find unique subjects"
echo "=========================================="
cut -d, -f6 students.csv | sort | uniq
echo


# ============================================================
# 10. Calculate the average grade of the students using awk
# ============================================================
echo "=========================================="
echo " Step 10: Calculate average grade"
echo "=========================================="
awk -F, '{if (NR>1) {sum+=$5; count++}} END {print "Average grade:", sum/count}' students.csv
echo


# ============================================================
# 11. Replace all occurrences of “Math” with “Mathematics” using sed
# ============================================================
echo "=========================================="
echo " Step 11: Replace 'Math' with 'Mathematics'"
echo "=========================================="
sed 's/Math/Mathematics/g' students.csv
echo


# ============================================================
# 12. Put all the commands into a shell script (.sh) file and run
# ============================================================
echo "=========================================="
echo " Step 12: Run all commands in this shell script"
echo "=========================================="
echo
