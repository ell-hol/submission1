all: README.md
# Create a variable with the number of lines in guessinggame.sh
NumberLines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+") 


README.md:
	echo "# First Submission for The Unix Workbench Course" > README.md
	# Date and time at which make was run
	echo "## Date and time at which make was run: " >> README.md
	date >> README.md
	# Number of lines of code contained in guessinggame.sh using string litterals
	echo "### Number of lines in guessinggame.sh : `grep -c '' guessinggame.sh`" >> README.md
clean:
	rm README.md
