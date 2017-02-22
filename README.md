<h1>Project for demonstrating use of Vagrant and Ansible</h1>

<h3># Vagrant</h3>
<h3># Ansible </h3>

<p>There are three projects:</p>
<ol>
<li><p>SampleApp : A sample Maven project to generate a webapp</p></li>
<li><p>WebBox : A Vagrant project to create a reusable Vagarant box installed with Java7 and Tomcat7, to be used as boxes for hosting web apps</p></li>
<li><p>WebSetup (Vagrant): A Vagrant project to create VMs using Vagrant and Virtual Box<br/>
&nbsp &nbsp   a) One VM for administration. VM name is admin</br>
&nbsp &nbsp   b) Two or more VMs for hosting sample web app. VM names are web1 and web2
</p></li>
<li><p>WebSetup (Ansible): It has two Ansible plabooks.</br>
    a) To do ssh setup on admin and web machines.</br>
    b) To deploy sample webapp on tomcat runiing on web machines.</br>
       Webapp is expected to be available in staging.d directory on shared vagrant mount.</br> 
</p></li>
</ol>

