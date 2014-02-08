# Source: http://www.darkoperator.com/blog/2010/5/26/setting-up-rvm-and-irb-for-metasploit-development-in-backtra.html
puts "Loaded ~/.irbrc"

# Load Lobraries
require 'rubygems'
require 'wirble'
require 'irb/completion' 

# Enable Indentation in irb
IRB.conf[:AUTO_INDENT] = true 

# Enable Syntax Coloring 
Wirble.init
Wirble.colorize 

# get all the methods for an object that aren't basic methods from Object
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end 

