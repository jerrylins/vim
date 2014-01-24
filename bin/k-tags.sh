# generate tags for special platform linux kernel
#!/bin/bash
help_usage() {
    echo "gen-linux-kernel-tags.sh The_absolute_path_of_linux_kernel Platform"
}
# check number of parameters, accepts only two
if [ $# -ne 2 ] ; then
echo "Please input two parameters!"
echo $#
help_usage
#kernel_path=./
#arch_path=rk*
exit 1
fi
# check if parameter 2 is absolute path of the project
if [ ${1:0:1} != '/' ] ; then
if [ ${1:0:1} != '~' ] ; then
echo "Please input the absolute path of linux kernel!"
help_usage
#exit 1
fi
fi
# delete '/' if it's the last char in the path
if [ ${1:0-1:1} == '/' ] ; then
linux_path=`echo ${1%/*}`
                       else
                       linux_path=${1}
                       fi
                       if [ ${2:0-1:1} == '/' ] ; then
                       platform=`echo ${2%/*}`
                       else
                       platform=${2}
                       fi
# check if platform exist
if [ ! -d ${linux_path}/arch/${platform} ] ; then
# if not exist, exit
echo "Platform: ${linux_path}/arch/${platform} not found!"
help_usage
exit 1
fi
#check if project directory exist
if [ ! -d linux-${platform} ] ; then
mkdir linux-${platform}
else
# or existed, ask user to override it ?
echo "linux-${platform} has existed, do you want to override it?[yes/no]"
read answer
if [ ${answer} == "yes" -o ${answer} == "y" ]; then
echo "clear old cscope files of the project ..."
rm -rf linux-${platform}/*
else
echo "Task canceled"
exit 1
fi
fi
#generate cscope.files
cd linux-${platform}
echo "genrate cscope.files from ${linux_path} ..."
find ${linux_path} \
-path "${linux_path}/arch/*" ! -path "${linux_path}/arch/${platform}*" -prune -o \
-path "${linux_path}/tmp*" -prune -o \
-path "${linux_path}/Documentation*" -prune -o \
-path "${linux_path}/scripts*" -prune -o \
-path "${linux_path}/drivers*" -prune -o \
-path "${linux_path}/usr*" -prune -o \
-path "${linux_path}/sound*" -prune -o \
-path "${linux_path}/tools*" -prune -o \
-path "${linux_path}/samples*" -prune -o \
-name "*.[chxsS]" -print > cscope.files
#ca
m cscope.files
echo "genrate tags form cscope.files ..."
# ctags --c-kinds=+p --fields=+iaS --extra=+q \
# -I EXPORT_SYMBOL+,EXPORT_SYMBOL_GPL+,__acquires+,__releases+,module_init+,module_exit+ \
# -L cscope.files
ctags --fields=+iaS --extra=+q \
-I EXPORT_SYMBOL+,EXPORT_SYMBOL_GPL+,__acquires+,__releases+,module_init+,module_exit+ \
-L cscope.files
#list the files generated
echo "Task done, list the files generated"
ls -l
