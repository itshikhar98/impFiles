#Will create a Switch 

clear # clear the clutter

echo "Enter your Name"
read Name

# Will start with our cases now 

case $Name 
"Shikhar" | "shikhar" | "s" | "S")
#If the Above Keywords matches our INPUT  it will execute our case
echo "Case 1"
echo "HELLO Shikhar"
;;

"Wankar" | "W" | "wankar" | "w" )
echo "You have Entered your Surname"
;;

*)   # One of the most important thing to Notice, this astrkik ) closes the case 
echo "Case not MATCHED" #default to be exectued 

;; esac 
