control "cis-2-1-1" do
  impact 1.0
  title "2.1.1 Remove telnet-server (Scored)"
  desc "The telnet package contains the telnet client, which allows users to start connections to other systems via the telnet protocol."
#  describe command("rpm -q telnet-server") do
#    its('stdout') { should match /package telnet-server is not installed/ }
#  end  
  describe package('telnet-server') do
    it { should_not be_installed }
  end
end

control "cis-2-1-2" do
  impact 1.0
  title "2.1.2 Remove telnet Clients (Scored)"
  desc "The telnet package contains the telnet client, which allows users to start connections to other systems via the telnet protocol."
#  describe command("rpm -q telnet") do
#    its('stdout') { should match /package telnet is not installed/ }
#  end  
  describe package('telnet') do
    it { should_not be_installed }
  end
end

control "cis-2-1-3" do
  impact 1.0
  title "2.1.3 Remove rsh-server (Scored)"
  desc "The Berkeley rsh-server (rsh, rlogin, rcp) package contains legacy services that exchange credentials in clear-text."
#  describe command("rpm -q rsh-server") do
#    its('stdout') { should match /package rsh-server is not installed/ }
#  end  
  describe package('rsh-server') do
    it { should_not be_installed }
  end
end

control "cis-2-1-4" do
  impact 1.0
  title "2.1.4 Remove rsh (Scored)"
  desc "The rsh package contains the client commands for the rsh services." 
  describe package('rsh') do
    it { should_not be_installed }
  end
end

control "cis-2-1-5" do
  impact 1.0
  title "2.1.5 Remove NIS Client (Scored)"
  desc "The Network Information Service (NIS), formerly known as Yellow Pages, is a client-server directory service protocol used to distribute system configuration files. The NIS client (ypbind) was used to bind a machine to an NIS server and receive the distributed configuration files." 
  describe package('ypbind') do
    it { should_not be_installed }
  end
end

control "cis-2-1-6" do
  impact 1.0
  title "2.1.6 Remove NIS Server (Scored)"
  desc "The Network Information Service (NIS) (formally known as Yellow Pages) is a client-server directory service protocol for distributing system configuration files. The NIS server is a collection of programs that allow for the distribution of configuration files." 
  describe package('ypserv') do
    it { should_not be_installed }
  end
end

control "cis-2-1-7" do
  impact 1.0
  title "2.1.7 Remove tftp (Scored)"
  desc "Trivial File Transfer Protocol (TFTP) is a simple file transfer protocol, typically used to automatically transfer configuration or boot files between machines. TFTP does not support authentication and can be easily hacked. The package tftp is a client program that allows for connections to a tftp server." 
  describe package('tftp') do
    it { should_not be_installed }
  end
end

control "cis-2-1-8" do
  impact 1.0
  title "2.1.8 Remove tftp-server (Scored)"
  desc "TriTrivial File Transfer Protocol (TFTP) is a simple file transfer protocol, typically used to automatically transfer configuration or boot machines from a boot server. The package tftp-server is the server package used to define and support a TFTP server." 
  describe package('tftp-server') do
    it { should_not be_installed }
  end
end

control "cis-2-1-9" do
  impact 1.0
  title "2.1.9 Remove talk (Scored)"
  desc "The talk software makes it possible for users to send and receive messages across systems through a terminal session. The talk client (allows initialization of talk sessions) is installed by default." 
  describe package('talk') do
    it { should_not be_installed }
  end

end
control "cis-2-1-10" do
  impact 1.0
  title "2.1.10 Remove talk-server (Scored)"
  desc "The talk software makes it possible for users to send and receive messages across systems through a terminal session. The talk client (allows initiate of talk sessions) is installed by default." 
  describe package('talk-server') do
    it { should_not be_installed }
  end
end