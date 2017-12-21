# Logging in to jetstream from your local terminal with a key file

Some of us have had problems with the web shell and getting into the Jetstream
portal. These materials will show you how to log in using an SSH key through your
local terminal.

## What are Cryptographic Keys?

Cryptographic keys are a convenient and secure way to authenticate without having to use
passwords. They consist of a pair of files called the public and private keys: the public part can
be shared with whoever you'd like to authenticate with (in our case, Jetstream!), and the private
part is kept "secret" on your machine. Things that are encrypted with the public key can be be
decrypted with the private key, but it is computationally intractable (ie, it would take on the
order of thousands of years) to determine a private key from a public key. You can read more about
it [here](https://en.wikipedia.org/wiki/Public-key_cryptography).

The good news is that there is already a registered public key for our Jetstream account. However,
to make use of it, you'll need the private key. And so, we move on!

## Getting the Private Key

The private key for our class account is available from a link we will tell you about in class. You will also need a password to actually download it and the download link will expire after one week. Be sure to select the *Direct Download* link when you visit the download page.  

## Getting your instance IP address

Assuming you have already gone through the process of [starting up a jetstream instance]({{ site.baseurl }}/jetstream/boot/) and that instance is currently *Active*, we can now connect to your instance if we know its IP address (its unique identifier on the
internet). This is listed in your instance details, circled in red below:

[![login]({{ site.baseurl }}/jetstream/images/web_login_IP.png)]({{ site.baseurl }}/jetstream/images/web_login_IP.png){:.no-push-state}  


Now, things diverge a little.

## On MacOS/Linux

These systems have their own terminal by default. Find and open your terminal application. On MacOS, you can
search for Terminal in finder. Typically it is located in `/Applications/Utilities` and you may want to keep Terminal in your dock for this class.

We're going to assume that the key file ended up in your `Downloads` folder. In your terminal,
run:

```bash
cd && mv ~/Downloads/bggn213_private_key .
```

This puts the file in your home folder. Now, we need to set its permissions more strictly:

```bash
chmod 600 bggn213_private_key
```

Finally, we can use the IP address from before, along with the common login name and the key, to log
in:

```bash
ssh -i bggn213_private_key tb170077@YOUR_IP_ADDRESS
```

You should now have access to your jetstream instance within your local terminal.

[![ssh]({{ site.baseurl }}/jetstream/images/terminal.png)]({{ site.baseurl }}/jetstream/images/terminal.png){:.no-push-state}  

## On Windows

For Windows, we first need to actually *install* a terminal. If you have followed the [course computer setup instructions]({{ site.baseurl }}/setup/) then you will already have mobaxterm installed. If not first download [mobaxterm home edition (portable)](http://mobaxterm.mobatek.net/download-home-edition.html) and run it.

### Start a new session

[![foo]({{ site.baseurl }}/jetstream/images/moba-1.png)]({{ site.baseurl }}/jetstream/images/moba-1.png)

### Fill in session settings

Fill in your "remote host," which will be the IP address from earlier. Then select
"specify username" and enter `tb170077`.

[![foo]({{ site.baseurl }}/jetstream/images/ec2-moba-2.png)]({{ site.baseurl }}/jetstream/images/ec2-moba-2.png)

### Specify the session key

Copy the downloaded private file onto your primary hard disk (generally C:) and then put in the full path to it (i.e. the drive and folders if any that the keyfile resides in, see below image for an example).

[![foo]({{ site.baseurl }}/jetstream/images/ec2-moba-3.png)]({{ site.baseurl }}/jetstream/images/ec2-moba-3.png)

### Click OK

Victory!

[![foo]({{ site.baseurl }}/jetstream/images/ec2-moba-4.png)]({{ site.baseurl }}/jetstream/images/ec2-moba-4.png)
