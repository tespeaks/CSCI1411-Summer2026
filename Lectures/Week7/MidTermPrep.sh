#1. Display Lines 9-16 in sherlock.txt using head and tail commands
head sherlock.txt -n 16 | tail -8

#2. Search for the word Holmes in the first 1000 lines, then copy results to extract.txt
head -n 1000 sherlock.txt | grep -w "Holmes" > extract.txt

#3a. Search for any words that contain apostrophes. HINT: Here is the REGEX: "[[:alpha:]]+['’][[:alpha:]]+"
grep -oE "[[:alpha:]]+['’][[:alpha:]]+" sherlock.txt
#3b. Now sort the results
grep -oE "[[:alpha:]]+['’][[:alpha:]]+" sherlock.txt | sort
#3c. Now count the uniqueness
grep -oE "[[:alpha:]]+['’][[:alpha:]]+" sherlock.txt | sort | uniq
#3d. Append it to extract.txt
grep -oE "[[:alpha:]]+['’][[:alpha:]]+" sherlock.txt | sort | uniq >> extract.txt

#4. Append the current date to extract.txt
date >> extract.txt

#5. Read the output of extract.txt
more extract.txt
cat extract.txt

#6. Copy extract.txt into a new file called extract_backup.txt
cp extract.txt extract_backup.txt

#7. List out all files that start with the word "extract" only with file sizes listed
ls extract* -s -h

#8. Delete all files that start with the word "extract" 
rm extract*

#9. Use a program called host to query Internet domain name servers for information.
#  Perform a lookup of ung.edu
host ung.edu

#10. Same query as #9 but only lines with mail server addresses. Then write out to ung.txt
