#!/bin/bash

#echo "Lets first see whether the shebang syntax is correct or not?"

# now that we know shebang needs an / in the begining of the path we can just go ahead with if

#num1=100
#num2=$num1
#echo $num2
#if [ -f ./ifscript.sh ]
#then
#	cat ifscript.sh
#else
#	echo "Nothing to see here"
#fi

#!/bin/bash

# Assign a value to the variable
my_variable="Hello, World!"

# Check if the variable is empty
if [ -z "$my_variable" ]; then
    echo "Variable is empty"
else
    echo "Variable has a value: $my_variable"
fi

