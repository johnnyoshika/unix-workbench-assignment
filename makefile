all: README.md

README.md: guessinggame.sh
	echo "# Coursera: The Unix Workbench" > README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	echo "* README.md created at: $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	echo "* Lines of code in guessinggame.sh: $$(wc -l guessinggame.sh  | egrep -o "[0-9]+")" >> README.md