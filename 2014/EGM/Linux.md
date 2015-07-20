------------
<h3 align="center">
2014 EGM: Linux (30 Marks)                                                                                                                                                
</h3>
<p align="center">
<a href="http://www.redbrick.dcu.ie/help/exams/admin-2014-egm">Redbrick</a>
</p>
------------  
1. **What flavour of linux do we use on the majority of Redbrick Servers? And what version?** (3 marks)<br>
    *Redbrick Specific*  
2. **What is /proc? Why would you look there?** (3 marks)  
   */proc* is very special in that it is also a *virtual filesystem*. It's sometimes referred to as a process     information pseudo-file system. It doesn't contain 'real' files but *runtime system information* (e.g.         *system memory, devices mounted, hardware configuration*, etc). For this reason it can be regarded as a         control and information centre for the kernel.  
    You would look there if you needed to know any of this 'system information'.  
3. **What does FHS stand for?** (2 marks)  
    *Filesystem Hierarchy Standard.* It defines the directory structure and directory contents in Unix             operating systems. It is maintained by the Linux Foundation.  
4. **What is an inode? How would you show a file's inode? How would you delete this file using its inode** (3 marks)  
    An *inode* is a *data structure* on a filesystem on Linux that *stores all the information about a file*       except its name and its actual data. Inodes (*Index Nodes*) provide important information on files such as     user and group ownership, access mode (read, write, execute permissions) and type.  
    `$ ls -li` *Show inode of file*  
    `$ find . -inum [inode-number] -exec rm -i {} \;` *Remove file using inode*   
5. **How would you show what version of OS you're running (assume this is on a Redbrick server)?** (2 marks)<br>
    *Redbrick Specific* 
6. **What is LDAP? Why do we use it?** (3 marks)  
    The *Lightweight Directory Access Protocol* is a lightweight client-server protocol for accessing directory services. The main idea of LDAP is to *keep in one place all the information of a user* (contact details, login, password, permissions), so that it is *easier to maintain* by network administrators.
    When you have a task that requires “write/update once, read/query many times”, you might consider using LDAP. It is designed to provide extremely *fast read/query performance* for a large scale of dataset.  
7. **What is apt? Why do we use it?** (3 marks)  
    The *Advanced Package Tool*, or APT, is a free software user interface that works with core libraries to handle the installation and removal of software on the *Debian Linux distribution and its variants.*  APT *simplifies the process of managing software* on Unix-like computer systems by *automating the retrieval, configuration and installation* of software packages, either from precompiled files or by compiling source code.
8. **What command would you use to find the process id running as a particular user? How would you kill just that process** (4 marks)  
The *process identifier* (normally referred to as the process ID or just PID) is a number used by most operating system kernels to *uniquely identify an active process*.  
    `ps -u [username]` *Find process ID running as user, 'username'*  
    `kill [pid]` *Kill process, 'pid'*  
9. **chmod and chown, what do they do? and for each give the syntax they use** (4 marks, 2 per command)  
**chmod** changes the *file mode* of each specified FILE according to MODE, which can be either a *symbolic representation* of changes to make, or an *octal number* representing the bit pattern for the new mode bits.  
`chmod [OPTIONS] [PERMISSIONS] [FILENAME]`  
*Example(using octal notation):* `chmod -v 754 FILE`  
Here the digits 7, 5, and 4 each individually represent the permissions for the *user, group, and others,* in that order. Each digit is a combination of the numbers 4, 2, 1, and 0:  
    4 stands for "read",  
    2 stands for "write",  
    1 stands for "execute", and  
    0 stands for "no permission."  
So 7 is the *combination* of permissions 4+2+1 (read, write, and execute), 5 is 4+0+1 (read, no write, and execute), and 4 is 4+0+0 (read, no write, and no execute).  
**chown** changes the user and/or group ownership of each given file.  
`chown [OPTIONS] [OWNER] [FILE]`  
*OWNER* is the user name or the numeric user ID (UID) of the new owner. 
10. **What command would you run to update to the latest version of OS available on a Redbrick server?** _(3 marks)_  
    *Redbrick Specific*
