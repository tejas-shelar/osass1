while [ 1 ]
do 
echo Enter the choice
echo 1. Present Directory
echo 2. Change Directory
echo 3. Display files
echo 4. Make Directory
echo 5. Creating file
echo 6. Open file
echo 7. Move file
echo 8. Copy file
echo 9.Delete file
echo 10.Rename file
echo 11.Counting letters
echo 12.Exit
read choice
case $choice in
1) echo you are working in 
pwd
;;

2) echo Enter the directory you want to go
read dire
cd $dire
pwd
;;

3) echo The files in the working directory=
ls
;;


4) echo Enter the Directory name you want to create
read newdir
mkdir $newdir
ls
;;



5) echo Enter the filename
read filename
if [ -f $filename ]
then
	echo File already exits
	ls
else
	touch $filename
	echo The file has been created successfully!!
	ls
fi
;;	


6) echo Enter the file name
read file
if [ -f $file ]
then 
	vi $file
else 
	echo The file not found!!
	ls
fi
;;


7) echo Enter the old path and new path with filenames
read oldfile
read newfile
if [-f $oldfile ]
then
	if [ -f $newfile ]
	then
		echo The file with same name already exists!!
		ls
	else
		mv $oldfile $newfile
		echo The file has been moved successfully!!
	fi
else
	echo File not found
fi
;;


8) echo Enter the old path and new path with filename
read oldfile
read newfile
if [ -f $oldfile ]
then
	if [ -f $newfile ]
	then
		echo The file having same name already exists!!
		ls
	else
		cp $oldfile $newfile
		echo The file has been copied successfully!!
		ls
	fi
else
	echo file not found
	ls
fi
;;

9) echo Enter the file name to delete
read file
if [ -f $file ]
then
	rm $file
	echo The file has been deleted successfully!!
	ls
else
	echo The file does not exists at given directory
fi
;;



10) echo Enter the old name and new name of the file
read oldname
read newname
if [ -f $oldname ]
then
	if [ -f $newname ]
	then
		echo The file with same name already exists!!
	else
		mv $oldname $newname
		echo The file renamed successfully!!
		ls
	fi
else
	echo File not found!!
fi
;;

11) echo Enter the name of the file for counting the letters
read file
if [ -f $file ]
then
	echo The given file contain  =
	wc $file
else
	echo File not found at given directory!!
	ls
fi
;;

12) echo The script is now exiting....
	break;
	;;

esac
done
