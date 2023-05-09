# words-counter
Words counter from files with txt extension

# setup
Ruby: 3.2.2

# description
Project to know how many times one word repeat in a file and can exclude some words like preposition to be more clear.

# run
To run this project is need to add two '.txt' files. The first file should be the file to count words and second file with the words to exclude. Link the file change the path on core code in the next part:
```
TEXT_FILE = "<Path-your-file>"
REFERENCE_TEXT_FILE = "<Path-file-will-want-to-exclude-some-words>"
```
Replace the diamonds(<>) to the path of file on system to link with the project.

``` 
ruby words_counter.rb
```
# tricks
It's possible make some cool things with return data like sorted, reverse and filter. Before, started REPL that you like, in this doc I demonstrated with standard ruby REPL.
Type ```irb``` on CLI.
Import your project:
```
require ("./src/words_counter.rb")
```
Wheter the CLI return ```true``` this mean success.
Let's start ;)

Sort:
```
WORDS_COUNT.sorted_by {|word, count| count}
```
Reverse:
```
WORDS_COUNT.sorted_by {|word, count| count}.reverse
```
Filter by 40 first's counters:
```
WORDS_COUNT.sorted_by {|word, count| count}[...40]
```
Filter by 40 laste's counters:
```
WORDS_COUNT.sorted_by {|word, count| count}.reverse[...40]
```

# conclusion
Ruby is a great language to do amazing things with simple codes. I hope you enjoy!!!
