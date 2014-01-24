#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#!/bin/bash

echo "[INFO] Nexus Tools Installer 1.0"
echo "[INFO] Please note that because this script does not require root access, it installs into the user's Home folder. Therefore it may not be available for other users of this machine."

# check operating system
if [ "$(uname)" == "Darwin" ]; then # Mac OS X
    OS=macosx
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then # Linux
    OS=linux
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then # Cygwin on Windows
    echo "[WARN] Nexus Tools Installer currently not compatible with Cygwin. Now exiting."
    exit 1
fi

mkdir ~/.adb-fastboot
cd ~/.adb-fastboot
echo "[INFO] Downloading ADB..."
curl -s -o adb "http://github.com/corbindavenport/nexus-tools/blob/master/$OS/adb?raw=true" -LOk
echo "[ OK ] ADB finished downloading."
echo "[INFO] Downloading Fastboot..."
curl -s -o fastboot "http://github.com/corbindavenport/nexus-tools/blob/master/$OS/fastboot?raw=true" -LOk
echo "[ OK ] Fastboot finished downloading."
echo "[INFO] Making ADB and Fastboot executable..."
chmod +x ./adb
chmod +x ./fastboot
echo "[INFO] Adding ADB and Fastboot to path..."
echo export PATH=~/.adb-fastboot/:\$PATH >> ~/.bash_profile
echo "[ OK ] Done!"
echo "[INFO] Type adb or fastboot to run."