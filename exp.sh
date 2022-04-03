# cat ewew.sh #

function check_language(){



which python
which node
which c++
which ssh
which bash
which java
which swift



[ $? == 0 ] && echo "All Well, WE ARE ALL SET !!! " || echo "Woah!!! We got a error" #Checking the echo or Status Code#

}

 echo "RUNNING SCRIPT $(check_language)"

echo $?

STATUSCODE=$?

# Switch starting here #

case  "$STATUSCODE" in 
0 )
echo "All Good Java is Installed"
;;

*)
echo "Status Code Not Matched"
echo "Java is Not Installed"

;;esac




