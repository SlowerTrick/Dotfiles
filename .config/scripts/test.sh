#!/usr/bin/env bash

# Basic Echo
echo "Hello world!"
echo "This is the first command"; echo "This is the second command"

# Variables
variable="Some string"
echo "$variable"
echo '$variable'

# Parameter Expansion
echo "${variable}"
echo "${variable/Some/A}"
variable="Some string. Some character"
echo "${variable//Some/A}"

# Size manipulation
length=7
echo "${variable:0:length}"
echo "${variable: -5}"
echo "${#variable}"

# Indirect expansion
other_variable="variable"
echo ${!other_variable}

# Set default value
echo "${foo:-"DefaultValueIfFooIsMissingOrEmpty"}"

# Arrays
array=(one two three four five six)
echo "${array[0]}"
echo "${array[@]}" # Print all elements
echo "${#array[@]}" # Print the array size
echo "${#array[3]}" # Number of character in element
echo "${array[@]:3:2}" 

# Loops
for item in "${array[@]}"; do
    echo "$item"
done

# Program arguments and info
echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."

# Ranges
echo {1..10}
echo {a..z}

from=1
to=10
echo {$from..$to}

# PWD
echo "I'm in $(pwd)" # execs `pwd` and interpolates output
echo "I'm in $PWD" # interpolates the variable

# Getting input
echo "What's your name?"
read name
# Note that we didn't need to declare a new variable.
echo "Hello, $name!"

# Ifs
if [[ "$name" != "$USER" ]]; then
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

# && and || operators
echo "What's your age?"
read age
if [[ "$name" == "slower" ]] && [[ "$age" -eq 20 ]]; then
    echo "This will run if $name is slower AND $age is 20."
fi

if [[ "$name" == "Slower" ]] || [[ "$name" == "SlowerVapuVapu" ]]; then
    echo "This will run if $name is Slower OR SlowerVapuVapu."
fi

# Checking empty values
if [[ -z "$name" ]]; then
    echo "Name is unset"
fi

# There are other comparison operators for numbers listed below:
# -ne - not equal
# -lt - less than
# -gt - greater than
# -le - less than or equal to
# -ge - greater than or equal to

# Test string against a regex pattern
email=me@example.com
if [[ "$email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]
then
    echo "Valid email!"
fi

# Conditional execution
echo "Always executed" || echo "Only executed if first command fails"
echo "Always executed" && echo "Only executed if first command does NOT fail"

# A single ampersand & after a command runs it in the background. A background command's
# output is printed to the terminal, but it cannot read from the input.
sleep 30 &

# List background processes
jobs

# Bring the background job to the foreground
fg

# Ctrl-C to kill the process, or Ctrl-Z to pause it
# Resume a background process after it has been paused with Ctrl-Z
bg

kill %2

# Aliases
# alias ping='ping -c 5'
# Escape the alias and use command with this name instead
# \ping 192.168.1.1

# Expressions
echo $(( 10 + 5 )) # => 15

# Running commands (PWD based)
ls
ls -l # Lists every file and directory on a separate line
ls -t # Sorts the directory contents by last-modified date (descending)
ls -R # Recursively `ls` this directory and all of its subdirectories

# Pipes
ls -l | grep "\.sh"

# Use `cat` to print files to stdout:
cat test.sh

# Reading files with cat
Contents=$(cat test.sh)
echo -e "START OF FILE\n$Contents\nEND OF FILE"

# Other normal programs like cp, mv cd, mkdir can be used too

(echo "First, I'm here: $PWD") && (cd ..; echo "Then, I'm here: $PWD")
pwd

# Read from stdin until ^EOF$ and overwrite hello.py with the lines
# between "EOF" (which are called a "here document"):
cat > hello.py << EOF
#!/usr/bin/env python
from __future__ import print_function
import sys
print("#stdout", file=sys.stdout)
print("#stderr", file=sys.stderr)
for line in sys.stdin:
    print(line, file=sys.stdout)
EOF

#python hello.py < "input.in" # pass input.in as input to the script
#
#python hello.py > "output.out" # redirect output from the script to output.out
#
#python hello.py 2> "error.err" # redirect error output to error.err
#
#python hello.py > "output-and-error.log" 2>&1
## redirect both output and errors to output-and-error.log
## &1 means file descriptor 1 (stdout), so 2>&1 redirects stderr (2) to the current
## destination of stdout (1), which has been redirected to output-and-error.log.
#
#python hello.py > /dev/null 2>&1
## redirect all output and errors to the black hole, /dev/null, i.e., no output
#
## The output error will overwrite the file if it exists,
## if you want to append instead, use ">>":
#python hello.py >> "output.out" 2>> "error.err"
#
## Run a command and print its file descriptor (e.g. /dev/fd/123)
## see: man fd
#echo <(echo "#helloworld")
#
## Overwrite output.out with "#helloworld":
#cat > output.out <(echo "#helloworld")
#echo "#helloworld" > output.out
#echo "#helloworld" | cat > output.out
#echo "#helloworld" | tee output.out >/dev/null
#
## Cleanup temporary files verbosely (add '-i' for interactive)
## WARNING: `rm` commands cannot be undone
#rm -v output.out error.err output-and-error.log
#rm -r tempDir/ # recursively delete
## You can install the `trash-cli` Python package to have `trash`
## which puts files in the system trash and doesn't delete them directly
## see https://pypi.org/project/trash-cli/ if you want to be careful
#
## Commands can be substituted within other commands using $( ):
## The following command displays the number of files and directories in the
## current directory.
#echo "There are $(ls | wc -l) items here."
#
## The same can be done using backticks `` but they can't be nested -
## the preferred way is to use $( ).
#echo "There are `ls | wc -l` items here."

# Bash uses a `case` statement that works similarly to switch in Java and C++:
case "$Variable" in
    # List patterns for the conditions you want to meet
    0) echo "There is a zero.";;
    1) echo "There is a one.";;
    *) echo "It is not null.";;  # match everything
esac

# `for` loops iterate for as many arguments given:
for Variable in {1..3}
do
    echo "$Variable"
done

for ((a=1; a <= 3; a++))
do
    echo $a
done

# Looping files
for Variable in file1 file2
do
    cat "$Variable"
done

for Output in ./*.sh
do
    cat "$Output"
done

# while loop:
while [ true ]
do
    echo "loop body here..."
    break
done

# Functions
function foo ()
{
    echo "Arguments work just like script arguments: $@"
    echo "And: $1 $2..."
    echo "This is a function"
    returnValue=0    # Variable values can be returned
    return $returnValue
}

# Call the function `foo` with two arguments, arg1 and arg2:
foo arg1 arg2
resultValue=$?
# => Arguments work just like script arguments: arg1 arg2

bar ()
{
    echo "Another way to declare functions!"
    return 0
}

bar


foo "My name is" $Name


# There are a lot of useful commands
# prints last 10 lines of test.sh
tail -n 10 test.sh

# prints first 10 lines of test.sh
head -n 10 test.sh

# print test.sh's lines in sorted order
sort test.sh

# report or omit repeated lines, with -d it reports them
uniq -d test.sh

# prints only the first column before the ',' character
cut -d ',' -f 1 test.sh

# replaces every occurrence of 'great' with 'great' in test.sh
# (regex compatible)
sed -i 's/great/great/g' test.sh
# be aware that this -i flag means that test.sh will be changed
# -i or --in-place erase the input file (use --in-place=.backup to keep a back-up)

# print to stdout all lines of test.sh which match some regex
# The example prints lines which begin with "foo" and end in "bar"
grep "^foo.*bar$" test.sh

# pass the option "-c" to instead print the number of lines matching the regex
grep -c "^foo.*bar$" test.sh

# Other useful options are:
grep -r "^foo.*bar$" someDir/ # recursively `grep`
grep -n "^foo.*bar$" test.sh # give line numbers
grep -rI "^foo.*bar$" someDir/ # recursively `grep`, but ignore binary files

# perform the same initial search, but filter out the lines containing "baz"
grep "^foo.*bar$" test.sh | grep -v "baz"

# if you literally want to search for the string,
# and not the regex, use `fgrep` (or `grep -F`)
fgrep "foobar" test.sh

# The `trap` command allows you to execute a command whenever your script
# receives a signal. Here, `trap` will execute `rm` if it receives any of the
# three listed signals.
trap "rm $TEMP_FILE; exit" SIGHUP SIGINT SIGTERM

# Sudo
NAME1=$(whoami)
NAME2=$(sudo whoami)
echo "Was $NAME1, then became more powerful $NAME2"

# Read Bash shell built-ins documentation with the bash `help` built-in:
#help
#help help
#help for
#help return
#help source
#help .
