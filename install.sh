
#!/bin/bash

# Colors for Better Understanding # 
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3` 
reset=`tput sgr0`



        ###########_----- START OF The SCRIPT-----#################


#################---SYNTAX of the FILE---------##################################
echo "${red}red text , ${yellow}yellow text, ${green}green text"
echo "./install.sh"
STATUS=10 #Default STATUS CoDE
zero=0
echoStatus=$?
path=`which `


#################----Start of the check_language FUNCTION----------#############################

check_language(){

# We have defined Functions for Every Langauge that checks whether that language is Installed or not

check_python(){             #function for checking Python

    echo "${yellow}Checking Python"
    which python3 && python3 --version   #checks the Python Location on HARDRIVE
    pythonSTATUS=$? #Confirms the Status Code, if Status code = 0  i.e, Python is Installed 
    #echo ${STATUS}     #Echo's the Status Code 
    echo "The Value of Status ${pythonSTATUS}"

 [[ pythonSTATUS -eq 0 ]] && echo " ${green}Python is Installed  \n" || echo  " ${red}Python is Not Installed \n" #modern If and Else block

  
  # if the pythonStatus code is 0, that means all well good and python is installed on the Harddrive, and it 
  # prints the "echo "Python is Installed" " Statement or it prints "Python is Not Installed" 
   }                   


check_java(){
    echo "${yellow}Checking Java"
    which java && java --version 
    javaSTATUS=$?
    #echo ${javaSTATUS}
[[ javaSTATUS -eq 0 ]] && echo "${green}Java is Installed \n" || echo "${red}Java is Not Installed \n" 

   }


check_node(){
    echo "${yellow}Checking Node"
    which nodejs && nodejs --version
    nodeSTATUS=$? 
    #echo ${nodeSTATUS}
[[ nodeSTATUS -eq 0 ]] && echo "${green}Node is Installed \n" || echo "${red}Node is Not Installed \n" 
   }


check_swift(){
    echo "${yellow}Checking Swift"
    which swift 
    swiftSTATUS=$?
    #echo ${swiftSTATUS}
[[ swiftSTATUS -eq 0 ]] && echo "${green}Swift is Installed \n" || echo "${red} Swift is Not Installed \n" 

   }


check_cPlusPlus(){
    echo "${yellow}Checking C++ "
    which c++ && c++ --version
    cPlusPlusSTATUS=$?
    #echo ${cPlusPlusSTATUS}
[[ cPlusPlusSTATUS -eq 0 ]] && echo "${green}C++ is Installed \n" || echo "${red}C++ is Not Installed \n" 

   }


check_bash(){
    echo "${yellow}Checking Bash"
    which bash && bash --version
    bashSTATUS=$?
    echo ${bashSTATUS}
[[ bashSTATUS -eq 0 ]] && echo "${green}Bash is Installed \n" || echo "${red}Bash is Not Installed \n" 

echo "${reset}"     #########------------_RESET's the TERMINAL COLOR---------------------------------############################################
   } 


####################-----Language Calling Functions ENDS here----######################################

#######################---Calling LANGUAGE FUNCTION here-----------#############################################

check_bash
check_cPlusPlus
check_java
check_swift
check_python
check_node
 
 #######################-----CALLING LANGAUGE function ENDS here--------#################################



[[ $? == 0 ]] && echo "All Well, WE ARE ALL SET !!! " || echo "Woah!!! We got a error" #Checking the echo or Status Code#
 #########------------_RESET's the TERMINAL COLOR---------------------------------############################################


} 


 #echo "RUNNING SCRIPT $(check_language)"



###########################--------CALLING THE MAIN check_language FUNCTION------------------################################################### 

# check_language # Calling the check_language MAIN function  for DEBUGGING


###################################################------Check the Langauges which are not Installed------#######################################



                      ##################--------FUNCTION STARTS HERE--------------------###########################################

check_language_not_Installed(){

#######################################-----Checking if Java is Not Installed-------#####################################################

[[ ${javaSTATUS} != ${zero} ]] && echo " ${red} WE need to install Java " || echo " ${green}Java is Installed ${pythonSTATUS}"


#######################################-----Checking if Python is Not Installed-------#####################################################

[[ ${pythonSTATUS} != ${zero} ]] && echo "${red} We need to install Python " || echo " ${green}Python is Installed ${pythonSTATUS}"


#######################################-----Checking if Node is Not Installed-------#####################################################

[[ ${nodeSTATUS} != ${zero} ]] && echo " ${red}We need to install Node " || echo " ${green}Node is Installed ${nodeSTATUS}"

#######################################-----Checking if Bash is Not Installed-------#####################################################

[[ ${bashSTATUS} != ${zero} ]] && echo "${red}We need to install BASH ${bashSTATUS} " || echo " ${green}Bash is Installed ${bashSTATUS}"

#######################################-----Checking if C++ is Not Installed-------#####################################################

[[ ${cPlusPlusSTATUS} != ${zero} ]] && echo "${red} We need to install C++ " || echo " ${green} C++ is Installed ${cPlusPlusSTATUS}"


echo "${reset}"

}



                ####################------FUNCTION ENDS HERE--------------------#######################################
 

#check_language_not_Installed    #CALLING THE FUNCTION FOR DEBUGGING
 


##################---------INSTALL NEW LANGUAGE, WHICH ARE NOT INSTALLED------------######################################################################



install_languages(){

echo "Install Language Main Function"
  
  
  install_java(){

       echo "Installing Java" 
       apt update 
       apt install default-jdk -y
       which java
       java --version 
       [[ $? == 0 ]] && echo "${green}Java Installed Successfully" || echo " ${red}Got some Error ${reset}"

  }
  

  install_cPlusPlus(){

     echo "Installing C++"
     apt install g++ -y
     [[ $? == 0 ]] && echo "${green} C++ Installed Succeessfully" || echo " ${red}Got some Error ${reset}"
  }



  install_python(){
      echo "Installing Python"
       apt install python3 -y 
       python3 --version 
      [[ $? -eq 0 ]] && echo "${green} Python Installed Successfully" || echo " ${red}Got some Error ${reset}" 

  }

  install_node(){
   
      echo "Installing Node"
      apt install nodejs -y
      nodejs --version
      [[ $? -eq 0 ]] && echo "${green} Node Installed Successfully " || echo " ${red}Got some Error  ${reset}" 

  }

  install_bash(){

     echo "Installing Bash"
     apt install bash -y
     [[ $? -eq 0 ]] && echo "${green} Bash Installed Succeessfully" || echo " ${red}Got some Error ${reset}"
  }
 
 ######################------Calling all the install_language INNER Functions here-----------#####################################

   install_bash
   install_cPlusPlus
   install_java
   install_python
   install_node
   

#########################-----END OF Calling INNER FUNCTION------------------##########################


}

###################---------remove_language FUNCTION-----------#####################
 ###$$$$$$$$$$##############-----STARTS HERE-------------------------------#####################

remove_language(){


   remove_java(){

      echo " ${yellow}Removing Java"

      apt auto-remove default-jdk -y 
      which java #for debugging
      [[ $? == 0 ]] && echo " ${green}Java Removed Succeessfully" || echo "Got some Error"
      apt update -y


   }

   remove_python(){

      echo " ${yellow}Removing Python"
     # path=`which python`
      apt autoremove python* -y
      [[ $? == 0 ]] && echo " ${green}Python Removed Succeessfully" || echo "Got some Error"
      apt update -y

#      apt auto-remove python


   }

   remove_node(){

      echo " ${yellow}Removing Node"

     # path=which node 
      apt autoremove node* -y
c      which node #for debugging
      [[ $? == 0 ]] && echo " ${green} Node Removed Succeessfully" || echo "Got some Error"
      apt update -y


   }


[ $? == 0 ]] && echo " ${green}All Well, WE ARE ALL SET !!! " || echo "Woah!!! We got a error" #Checking the echo or Status Code#
echo " ${green}All Languages Removed SuccessFully !!!!"


remove_java
remove_node
remove_python


}




##########################------------OPTIONS FOR CHECKING WHAT THE USER WANTS TO DO------------------------------##################################################

echo "$reset"
echo "./install.sh" 
echo "A Script for all your Language Installing Needs "


echo "Please Select the Option :"

echo " 1) Check which Languages are Installed "
echo " 2) Install a New Set of Langauge (Java, Python, Node) "
echo " 3) Remove all the Languages (Java, Python, Node)"

read userInput          #######----------__READ USER INPUT-----------------##################
echo " $userInput"         ##########F-----FOR DEBUGGING------------------####################
###############----------_CASE FOR CHECKING USER INPUT--------------###########

case $userInput in          
"1" )
echo "CHECKING ALL INSTALLED LANGUAGES"
check_language

#echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------------"

check_language_not_Installed
;;

"2" )
echo "Installing NEW SET OF LANGUAGES"
install_languages 
check_language


;;

"3")
echo "Removing all Installed languages .../\/\/\/\/\/\/\/\/\/\/\/"
remove_language
check_language_not_Installed

;;
*)
echo "No Option Selected"

;; esac













