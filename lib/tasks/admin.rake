   
namespace :bootstrap do
  
    desc "Creating Admin Record"
    task :admin => :environment do

       @admin =  Admin.create(:first_name => "School", :last_name => "Admin", :email => "admin@example.com",
                     :password => "password", :confirm_password => "password" )
       @admin.confirm!
    
    end

end
