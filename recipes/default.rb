#
# Cookbook Name:: windows-jazz
# Recipe:: default
#
# Copyright 2014, Lonnie VanZandt
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
#

myAttrs = node['windows-jazz']

# refactor this and chrome to a separate recipe
windows_feature 'DesktopExperience' do
    action :install
    all true
end

windows_package 'Google Chrome' do
    source 'https://dl-ssl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B806F36C0-CB54-4A84-A3F3-0CF8A86575E0%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dfalse/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi'
    action :install
end

# download and unzip the chosen Jazz Release
directory myAttrs['repoDir'] do
    action :delete
    recursive true
end if File.directory?(myAttrs['repoDir'])

windows_zipfile myAttrs['repoDir'] do
    source myAttrs['url']
    action :unzip
end

#download and unzip the IBM Installation Manager
directory myAttrs['imrDir'] do
    action :delete
    recursive true
end if File.directory?(myAttrs['imrDir'])

windows_zipfile myAttrs['imrDir'] do
    source myAttrs['installer']
    action :unzip
end
