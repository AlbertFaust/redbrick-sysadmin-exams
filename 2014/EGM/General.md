------------
<h3 align="center">
2014 EGM: General (30 Marks)                                                                                                                                                
</h3>
<p align="center">
<a href="http://www.redbrick.dcu.ie/help/exams/admin-2014-egm">Redbrick</a>
</p>
------------
1. **What is the default shell of new users on Redbrick?** (3 marks)<br>
    *Redbrick Specific*  
2. **What is Redbrick's primary login server? Name two other servers.** (3 marks)<br>
    *Redbrick Specific*  
3. **What temperature should the server room be kept at?** (2 marks)<br>
    *Redbrick Specific*  
4. **What does nagios do? Why do we use it? How does it work?** (4 marks)<br>
    *Redbrick Specific*
5. **You type the command "ls" expecting a list of all non-hidden items in the current directory, instead you get an ascii dick printed to standard output, why would this happen?** (4 marks)<br>
This could be caused by someone creating an *alias* for ls that prints an ascii dick in ~/.zshrc or ~/.bashrc. This could be done by adding:  
`alias ls="[INSERT ASCII DICK HERE]"` to ~/.bashrc or ~/.zshrc.
6. **What are ALOM,ILOM and DRAC and why do admins love them?** (3 marks)<br>
  * _Advanced Lights Out Management_
  * _Integrated Lights Out Management_
  * _Dell Remote Access Control_  

   These are all forms of *out-of-band management*, sometimes called *lights-out management* (or LOM) and involves the use of a dedicated management channel for device maintenance.
It allows a system administrator to monitor and manage servers and other network-attached equipment by remote control *regardless of whether the machine is powered on*, or if an operating system is installed or functional.  
7. **What is a ulimit, why do we impose them on servers other than the development server?** (3 marks)<br>
    *Redbrick Specific*
8. **Why would you use a managed PDU instead of a PDU? What does PDU stand for?** (3 marks)<br>
    A *Power Distribution Unit* is a device fitted with multiple outputs designed to distribute electric power, especially to racks of computers and networking equipment located within a data center.
    Usually a PDU needs physical interaction to turn outlets on and off but a *Managed* PDU allows a SysAdmin to remotely 'control' the power outlets and pull power usage data remotely.  
9. **What does SNMP stand for?** (2 marks)<br>
    *Simple Network Management Protocol* is a popular protocol for network management.
    It is used for collecting information from, and configuring, network devices, such as servers, printers, hubs, switches, and routers on an *Internet Protocol* (IP) network.  
10. **What protocol allows us to mount /storage over multiple servers?** (3 marks)<br>
    *Redbrick Specific*
