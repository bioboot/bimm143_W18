## Bonus material

Now that we have connected we can move on to the Unix shell lesson. There are however a few commands that tell you a little about the machine you have connected to:

- `whoami` - shows your username on computer you have connected to:

```bash
dcuser@ip-172-31-62-209 ~ $ whoami
dcuser
```
-  `df -h` - shows space on hard drive* 

```bash
dcuser@ip-172-31-62-209 ~ $ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            2.0G   12K  2.0G   1% /dev
tmpfs           396M  792K  395M   1% /run
/dev/xvda1       99G   48G   47G  51% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            2.0G  144K  2.0G   1% /run/shm
none            100M   36K  100M   1% /run/user
```
\* Under the column 'Mounted on' row that has '/' as the value shows the value for the main disk. 

- `cat /proc/cpuinfo` - shows detail information on how many processors (CPUs) the machine has

```bash
dcuser@ip-172-31-62-209 ~ $ cat /proc/cpuinfo
processor  : 0
vendor_id : GenuineIntel
cpu family  : 6
model   : 62
model name  : Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz
stepping  : 4
microcode : 0x415
cpu MHz   : 2494.060
cache size  : 25600 KB
physical id : 0
siblings  : 2
core id   : 0
cpu cores : 2
apicid    : 0
initial apicid  : 0
fpu   : yes
fpu_exception : yes
cpuid level : 13
wp    : yes
flags   : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl xtopology eagerfpu pni pclmulqdq ssse3 cx16 pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm xsaveopt fsgsbase smep erms
bogomips  : 4988.12
clflush size  : 64
cache_alignment : 64
address sizes : 46 bits physical, 48 bits virtual
power management:

processor : 1
vendor_id : GenuineIntel
cpu family  : 6
model   : 62
model name  : Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz
stepping  : 4
microcode : 0x415
cpu MHz   : 2494.060
cache size  : 25600 KB
physical id : 0
siblings  : 2
core id   : 1
cpu cores : 2
apicid    : 2
initial apicid  : 2
fpu   : yes
fpu_exception : yes
cpuid level : 13
wp    : yes
flags   : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl xtopology eagerfpu pni pclmulqdq ssse3 cx16 pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm xsaveopt fsgsbase smep erms
bogomips  : 4988.12
clflush size  : 64
cache_alignment : 64
address sizes : 46 bits physical, 48 bits virtual
power management:
```
- `tree -L 1` - shows a tree view of the file system 1 level below your current location. 

```bash
dcuser@ip-172-31-62-209 ~ $ tree -L 1

├── dc_sample_data
├── Desktop
├── Downloads
├── FastQC
├── openrefine-2.6-beta.1
├── R
└── Trimmomatic-0.32

7 directories, 0 files
``` 

## Staying Connected to the Cloud

Depending on how you connect to the cloud, you may have processes and jobs that are running, and will need to continue running for sometime. If you have collected to your cloud desktop via VNC, jobs you start will continue to run. If you are connecting via SSH, if you end the SSH connection (e.g. you exit your SSH session, you loose your connection to the internet, you close your laptop, etc.), jobs that are still running when you disconnect. There are a few ways to keep cloud processes running in the background. Many times when we refer to a background process we are talking about what is [described at this tutorial](http://www.cyberciti.biz/faq/linux-command-line-run-in-background/) - running a command and returning to shell prompt. Here we describe a program that will allow us to run our entire shell and keep that process running even if we disconnect: `tmux`. 

### Starting and attaching to `tmux` sessions

**Starting a new session**

A 'session' can be thought of as a window for `tmux`, you might open an terminal to do one thing on the a computer and then open a new terminal to work on another task at the command line. You can start a session and give it a descriptive name:

```bash
    $ tmux new -s session_name
``` 
This creates a session with the name 'session_name'

As you work, this session will stay active until you close this session. Even if you disconnect from your machine, the jobs you start in this session will run till completion. 

**Seeing active sessions**

If you disconnect from your session, or from your ssh into a machine, you will need to reconnect to an existing `tmux` session. You can see a list of existing sessions:

```bash
$ tmux list-sessions
```

**Connecting to a session**

To connect to an existing session:

```bash
$ tmux attach -t session_name
# -t option = 'target'
```

**Switch sessions**
You can switch between sessions:

```bash
$ tmux switch -t session_name
```

**Kill a session**
You can end sessions:

```bash
$ tmux kill-session -t session_name
```

### Resources:

Cloud computing offerings:

* Amazon EC2: [http://aws.amazon.com/ec2/](http://aws.amazon.com/ec2/)
* Microsoft Azure: [https://azure.microsoft.com/en-us/](https://azure.microsoft.com/en-us/)
* Google Cloud Platform: [https://cloud.google.com/](https://cloud.google.com/)
* CyVerse (iPlant Collaborative) Atmosphere: [http://www.cyverse.org/atmosphere](http://www.cyverse.org/atmosphere)

> Learn more about cloud computing in bioinformatics<br>
Fusaro VA, Patil P, Gafni E, Wall DP, Tonellato PJ (2011) **Biomedical Cloud Computing With Amazon Web Services**. PLoS Comput Biol 7(8): e1002147. doi: 10.1371/journal.pcbi.1002147 

