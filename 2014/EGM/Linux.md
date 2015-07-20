------------
<h3 align="center">
2014 EGM: Linux (30 Marks)                                                                                                                                                
</h3>
<p align="center">
<a href="http://www.redbrick.dcu.ie/help/exams/admin-2014-egm">Redbrick</a>
</p>
------------  
1. **What flavour of linux do we use on the majority of Redbrick Servers? And what version?** _(3 marks)_    
    `Redbrick Specific`  
2. **What is /proc? Why would you look there?** _(3 marks)_  
    `where information related to processes is held  
    virtual directory`  
3. **What does FHS stand for?** _(2 marks)_  
    `filesystem hierarchial standard`  
4. **What is an inode? How would you show a file's inode? How would you delete this file using its inode** _(3 marks)_  
    `an inode is a pointer to a file in linux  
    ls -li  
    find . -inum 11879706 -delete`  
5. **How would you show what version of OS you're running (assume this is on a Redbrick server)?** _(2 marks)_  
    `uname -a`
6. **What is LDAP? Why do we use it?** _(3 marks)_  
    `lightweight directory access protocol 
    -use it to manage users, their permissions and resetting passwords`
7. **What is apt? Why do we use it?** _(3 marks)_  
    `package manager for debian distros, don’t need to compile from source, easy to install programs`
8. **What command would you use to find the process id running as a particular user? How would you kill just that process** _(4 marks)_  
    `ps -u [username]
    kill [pid]`
9. **chmod and chown, what do they do? and for each give the syntax they use** _(4 marks, 2 per command)_  
    `chmod 700 test.py will make the file executable, readable and writable to the owner of the file and the group/global users cannot do anything to it
    chown changes the owner of a file`
10. **What command would you run to update to the latest version of OS available on a Redbrick server?** _(3 marks)_  
    `Redbrick Specific`
