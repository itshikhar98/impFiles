#Will Use this Script to create new Script Programming Lanuguage Files 

 #Will start with C

echo "New file Name"
read filename


# Will Create a new Folder with NEW FILENAME
mkdir ${filename}

# Will Copy the main run.sh file here 
cp run.sh ${filename}  

cd ${filename}

pwd  #Prints the Current Directory



#Will Create the C file Now 
c="${filename}.c"

#Will Create the Java file Now
java="${filename}.java"

#Will Create the Swift file Now
swift="${filename}.swift"

#Will Create the Python file Now
python="${filename}.py"

#Will Create the JS file Now
js="${filename}.js"

touch $c
touch $java
touch $swift
touch $python
touch $js



echo "All files Created Successfully!!!"