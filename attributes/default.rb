#
# Cookbook Name:: windows-jazz
# Recipe:: default
#
# Copyright 2014, Lonnie VanZandt lonniev@gmail.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# choice of IBM Download Mirror
default['windows-jazz']['mirror'] = "http://ca-toronto-dl02.jazz.net/mirror/downloads"

# the IBM Installation Manager
default['windows-jazz']['imr-token'] = "0yl152W3a5sd979mvC11Wfiu24UUf4"

default['windows-jazz']['installer'] = "#{default['windows-jazz']['mirror']}/ibm-installation-manager/1.7.3/1.7.3/agent.installer.win32.win32.x86_64_1.7.3000.20140521_1925.zip?tjazz=#{default['windows-jazz']['imr-token']}"

default['windows-jazz']['imrDir'] = "/temp/ibm-imr"

# Instructions for configuring Installation Manager
#After you have downloaded and installed IBM Installation Manager from this page, follow these steps to configure it to use separately downloaded Installation Manager repositories:
#Start Installation Manager and select File > Preferences.
#On the Repositories preferences page, click Add Repository and select the repository.config file from your downloaded Installation Manager repository. Click OK.
#Click Install. Installation Manager will prompt to install using the repositories.

# the choice of Jazz CLM Release
default['windows-jazz']['release'] = "5.0"

# authenticated user token
default['windows-jazz']['jazz-token'] = "T351B5B3Ff5y1i098b66H2516ssB06"

default['windows-jazz']['url'] = "#{default['windows-jazz']['mirror']}/clm/#{default['windows-jazz']['release']}/#{default['windows-jazz']['release']}/JTS-CCM-QM-RM-repo-#{default['windows-jazz']['release']}.zip?tjazz=#{default['windows-jazz']['jazz-token']}"

default['windows-jazz']['repoDir'] = "/temp/jazz-install"