# safer-rm

A shell script which passes rm with -I parameter to avoid unwanted deletion of files.

From man page of rm:

<code>
If the -I or --interactive=once option is given, and there are more than three files or the -r, -R, or --recursive are given, then rm prompts the user for whether to proceed with the entire operation.
</code>
<br>

Copy safer-rm to /usr/local/bin and make symbolic link named "rm" in /usr/local/bin to safer-rm.
<br>

The shell script checks 1st and last arguments for -rf flags and substitutes with -I.
<br>

If the -rf flag is not in 1st or last position, the script won't work as intended and will erase the given arguments without prompting.
<br>

<br>
<b>WARNING:</b>
<b>
The -I argument can have unwanted side effects in system programs.
<br>
Move the rm symlink to / when doing system maintenance activities.
<br>
Or install and enable mvrm.service and shutdown.sh & shutdown.service
<br>
This will prevent any issues during bootup / shutdown.
</b>