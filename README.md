<h1>Project for demonstrating use of Vagrant and Ansible</h1>

<h3># Vagrant</h3>
<h3># Ansible </h3>

<p>
<br/>
There are three projects:<br/>
1 - SampleApp : A sample Maven project to generate a webapp.</br>
2 - WebBox : A Vagrant project to create a reusable Vagarant box installed with Java7 and Tomcat7,</br>
             to be used as boxes for hosting web apps.</br>
3 - WebSetup : A Vagrant project to create VMs using Vagrant & Virtual Box<br/>
    a) One VM for administration. VM name is admin</br>
    b) Two or more VMs for hosting sample web app. VM names are web1 and web2.</br>  
3.1 WebSetup has two Ansible plabooks.</br>
    a) To do ssh setup on admin and web machines.</br>
    b) To deploy sample webapp on tomcat runiing on web machines.</br>
       Webapp is expected to be available in staging.d directory on shared vagrant mount.</br> 
<br/>
Though it works but needs little cleanup! <br/>
</p>
