package 'vim-enhanced'
package 'nano'
package 'tree' do
    action :install
end
package 'git' do
    action :install
end
package 'ntp'

file '/etc/motd' do
    content 'This server is property of Pallagani Suresh'
    action :create
    owner 'root'
    group 'root'
end

service 'ntpd' do
    action [:enable,:start]
end




