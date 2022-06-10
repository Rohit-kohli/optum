# copyright: 2018, The Authors

title "/tmp profile "

# you add controls here
control "tmp-1.0" do                        
  impact 0.3                                
  title "Create /tmp directory"            
  desc "A /tmp directory must exist"
  describe file("/tmp") do                  
    it { should be_directory }
  end
end

control "tmp-1.1" do                        
  impact 0.3                                
  title "/tmp is owned by a root user"             
  desc "A /tmp directory must be owned by root user"
  describe file("/tmp") do                 
    it { should be_owned_by 'root' }
  end
end