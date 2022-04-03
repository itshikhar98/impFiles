
# Color Block Starts here
red=`tput setaf 1`        # Sets the color to red
green=`tput setaf 2`      # sets the color to green
yellow=`tput setaf 3`     # Sets the color to yellow
reset=`tput sgr0`         # Resets the color 
space = '\n \n'           # Used for space

# Color Block ENDS here 



#testing Block
echo "${red}red text ${green}green"
#echo $red
echo $reset
#echo $yellow
#Testing Block ENDS here


###################################SCRIPT STARTS FROM HERE #####################################################

#Getting User Input 
echo "Enter the file name"   #Getting the FILENAME # 
read filename 
echo $filename
cd $filename

#Making C file
echo "${yellow} Making C file .../// ${green} "         #Making the C file, changing color to green
make $filename                                 #make command                                    
./$filename                                      #Exectuing the C file
echo $space                                        #Space



# Making Java File 
echo "${yellow}Making Java file ${green}"         #Making the JAVA
java="${filename}.java"
javac ${java}
java ${java}


# Making Swift File
echo "${yellow}Running Swfit file ${green}"
swift="${filename}.swift"
swift ${swift}



#Making Python File
echo "${yellow} Interpreting Python File : ${green}"
pyt="${filename}.py" 
python $pyt


# Making JS File
echo "${yellow}Interpreting  Js file ${green}"
js="${filename}.js"
node ${js}
echo $?



echo "Everything Executed Successfully!!!  "


say " File Executed Succefuily"

