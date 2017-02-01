# contents of custom Vagrantfile
# the importants points are:
# - it has .rb extension, otherwise it would not be picked up by test kitchen
# - line 9, which prevents from ssh key insertion (which causes auth fail). This behaviour cannot be simply achieved
# by specifying insert_key: false in .kitchen.yml, because of the bug https://github.com/test-kitchen/kitchen-vagrant/issues/236
Vagrant.configure("2") do |c|
  c.ssh.insert_key = false
end
