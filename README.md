nexus-tools
===========

Nexus Tools is an installer for the Android debug/development command-line tools ADB (Android Device Bridge) and Fastboot. The script does not need to be downloaded, simply copy and paste this command into the terminal and run it:
```
bash <(curl https://raw.github.com/corbindavenport/nexus-tools/master/install.sh)
```
This will download the script and run it. The script will download the files it needs during runtime, so it requires an internet connection. The script works on both Mac OS X and Linux (as long as the curl package is installed).

Nexus Tools requires sudo privileges to install the adb and fastboot tools to /usr/bin.

---------------------------------------

__NOTE:__ Script was put together entirely by corbindavenport. The only difference is that this fork does not place binaries in /usr/bin, so it does not require root to run. 

---------------------------------------

__XDA Thread:__ [http://forum.xda-developers.com/showthread.php?t=2564453](http://forum.xda-developers.com/showthread.php?t=2564453)

---------------------------------------

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
