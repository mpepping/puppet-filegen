module Puppet::Parser::Functions
  newfunction(:filegen) do |args|
    filename = args[0]
    str = args[1]

    fqdn = lookupvar('fqdn')
    hostname = lookupvar('hostname')


    File.open(filename, 'a') {|fd| 
      fd << "#!/bin/bash\n"
      fd << str + "\n"
      fd << fqdn + "\n"
      fd << hostname + "\n"
    }
  end

end
