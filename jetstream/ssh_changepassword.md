# Adding password to a Jetstream instance

To add a password to your Jetstream instance, 'Open the Web Shell' from the instance webpage (or connect via SSH if you already know how).

Then enter the following command:  

```
sudo passwd tb170077
```
Enter a password when prompted. The letters will not display when you type, so do not be alarmed.

[![foo]({{ site.baseurl }}/jetstream/images/ssh_passwd.png)]({{ site.baseurl }}/jetstream/images/ssh_passwd.png){:.no-push-state}


Exit out of the Web Shell.

Open your terminal and login using the correct IP address of your instance (i.e. likely not the one below!):

```
ssh tb170077@149.165.156.131
```

Type your password when prompted.

[![ssh]({{ site.baseurl }}/jetstream/images/ssh_login.png)]({{ site.baseurl }}/jetstream/images/ssh_login.png){:.no-push-state}
