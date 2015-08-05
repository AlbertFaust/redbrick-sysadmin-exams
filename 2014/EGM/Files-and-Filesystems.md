------------
<h3 align="center">
2014 EGM: File and Filesystems (30 Marks)

</h3>
<p align="center">
<a href="http://www.redbrick.dcu.ie/help/exams/admin-2014-egm">Redbrick</a>
</p>
------------
1. **Name 3 different types of filesystems** (3 marks)<br>
ext3, NTFS, FAT32
2. **What does it mean when a filesystem is described as being journalled?** (2 marks)<br>
A journaling filesystem is a filesystem that maintains a special file called a journal that is used to repair any inconsistencies that occur as a result of an improper shutdown.
Journaling filesystems write metadata (i.e., data about files and directories) into the journal that is flushed to the HDD before each command returns.
 In the event of a system crash, a given set of updates may have either been fully committed to the filesystem (i.e., written to the HDD), in which case there is no problem, or the updates will have been marked as not yet fully committed, in which case the system will read the journal, which can be rolled up to the most recent point of data consistency.
This is far faster than a scan of the entire HDD when rebooting, and it guarantees that the structure of the filesystem is always internally consistent. Thus, although some data may be lost, a journaling filesystem typically allows a computer to be rebooted much more quickly after a system crash.
For example, deleting a file on a Unix file system involves three steps:[4]

    Removing its directory entry.
        Release the inode to the pool of free inodes.
            Return all used disk blocks to the pool of free disk blocks.

            If a crash occurs after step 1 and before step 2, there will be an orphaned inode and hence a storage leak. On the other hand, if only step 2 is performed first before the crash, the not-yet-deleted file will be marked free and possibly be overwritten by something else.
3. **How would you show what filesystems are currently mounted?** (3 marks)<br>
mount will show the currenly mounted filesystems. mount | column -t will display it in a nicer format.  Alternatively read the contents of /proc/mounts cat /proc/mounts . df -H will also display filesystems along with size and amount of storage used. fdisk -l will too but requires root.
4. **What is a symlink, how would you create one, how does it differ from a 'hard-link'?** (4 marks)<br>
A symbolic link, also termed a soft link, is a special kind of file that points to another file, much like a shortcut in Windows or a Macintosh alias.
Unlike a hard link, a symbolic link does not contain the data in the target file. It simply points to another entry somewhere in the file system.
This difference gives symbolic links certain qualities that hard links do not have, such as the ability to link to directories, or to files on remote computers networked through NFS. Also, when you delete a target file, symbolic links to that file become unusable, whereas hard links preserve the contents of the file.
Symbolic links refer to a symbolic path indicating the abstract location of another file. Hard links, refer to the specific location of physical data.
Hard links cannot links directories ( cannot link /tmp with /home/you/tmp). Hard links cannot cross file system boundaries ( cannot link /tmp mounted on/tmp to 2nd hard disk mounted on /harddisk2).
ln -s /path/to/file link_name
rm link_name or unlink link_name
ln file.txt hard_link
rm hard_link
5. **You've added a new disk to a machine mount /zergless/potato on it** (2 marks)<br>
6. **drwxrw-rw- what is this permission in octal format?** (3 marks)<br>
7. **What is NFS? Do we use it in Redbrick? If so where?** (4 marks)<br>
8. **What are the following? i) ctime ii) atime iii) mtime** (1 mark each)<br>
9. **What is the difference between /etc/mtab & /etc/fstab** (3 marks)<br>
10. **How would you force unmount a 'busy' directory?** (3 marks)<br>
