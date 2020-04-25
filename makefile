all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "## Project Title: UnixWorkbench_GuessingGame" > README.md
	echo "\n**README.md created on:**" >> README.md
	date >> README.md
	echo "\n**Number of lines of code contained in guessinggame.sh:**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

