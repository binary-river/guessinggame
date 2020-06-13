
README.md:
	echo "### Project Name: Guessinggame" > README.md
	date >> README.md
	echo "" >> README.md
	wc -l guessinggame.sh | grep -o [0-9]*  >> README.md

clean:
	rm -f README.md
