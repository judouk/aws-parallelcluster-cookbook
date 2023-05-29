# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
#
# http://aws.amazon.com/apache2.0/
#
# or in the "LICENSE.txt" file accompanying this file.
# This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or implied.
# See the License for the specific language governing permissions and limitations under the License.

provides :slurm_dependencies, platform: 'centos' do |node|
  node['platform_version'].to_i == 7
end

use 'partial/_slurm_dependencies_common'

def dependencies
  %w(json-c-devel http-parser-devel perl-Switch lua-devel)
end