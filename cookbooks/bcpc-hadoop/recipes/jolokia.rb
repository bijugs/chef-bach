#
# Cookbook Name:: bcpc-hadoop
# Recipe: jolokia
#
# Copyright 2017, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This recipe installs the jolokia JVM agent and a default security policy.
#
# Add the agent to JVM-based applications by adding
# node['bcpc']['jolokia']['jvm_args'] to the JVM launch options.
#

include_recipe 'bcpc-hadoop::maven_config'
lib_file = node['bcpc']['jolokia']['jar_path']
lib_file_name = Pathname.new(lib_file).basename.to_s
src_file_url = File.join(get_binary_server_url, lib_file_name)

directory File.dirname(node['bcpc']['jolokia']['jar_path']) do
  mode 0555
  user 'root'
  group 'root'
  recursive true
  action :create
end

remote_file lib_file.to_s do
  source src_file_url
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

directory File.dirname(node['bcpc']['jolokia']['policy_path']) do
  mode 0555
  user 'root'
  group 'root'
  recursive true
  action :create
end

template node['bcpc']['jolokia']['policy_path'] do
  source 'jolokia_security_policy.xml.erb'
  mode 0444
  user 'root'
  group 'root'
end
