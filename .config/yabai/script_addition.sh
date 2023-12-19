#!/usr/bin/env sh
# Copyright 2023 Nicolas Paul. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

echo 'To enable the Script Addition extension to Yabai,'
echo 'the following must be done after each brew upgrade of Yabai.'
echo
echo 'Add the specific content within the Yabai sudoers file:'

user=`whoami`
bin=`which yabai` 
sha=`shasum -a 256 $bin | cut -d" " -f1`

echo ''
echo "    $user ALL=(root) NOPASSWD: sha256:$sha $bin --load-sa"
echo ''
echo 'By using the command:'
echo ''
echo '    sudo visudo -f /private/etc/sudoers.d/yabai'
