# weight_control
Weight Tracker Shell Scrip


This is a shell script that takes one argument (a weight in Kg) and checks it against a maximum and minimum weight limit (MAX_WEIGHT and OBJECTIVE respectively). Depending on the value of the argument, different messages are printed to a file called weight_tracking.txt.

Here's how the script works:

- The set -e command tells the shell to exit immediately if any command fails (i.e. returns a non-zero exit code), this is a good practice to ensure that errors are caught early and the script doesn't continue running with unexpected behavior.
 
- The MAX_WEIGHT and OBJECTIVE variables are set to the maximum and objective weight limits, respectively.

- The script then checks the value of the argument using a series of conditional statements (if, elif, else).

- Each statement uses the bc command to perform floating-point arithmetic comparisons.

- Depending on the value of the argument, different messages are printed to weight_tracking.txt. 

- The messages are personalized with the weight value, the date and time ($(date +"%Y-%m-%d %T")), and the corresponding warning or congratulation message.

- Overall, this script is a simple weight tracking program that writes messages based on whether the user's weight is within the acceptable range, above or below the limit.
 
 - After colonizing the repo, or copy the code you first need to define the values of the MAX_WEIGHT and OBJECTIVE variables.
 
 - Then you just need to run the script and pass it your weight as an argument:
 
                  EXAMPLE:  ./weight_control.sh <your_weight>
                  
 - On the first run, the script will create the file and then it will write your results on it!
 
 I hope you like it, feel free to use it and comment here!
 
Thank you very much
