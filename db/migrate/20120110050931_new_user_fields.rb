class NewUserFields < ActiveRecord::Migration
  def self.up
    add_column :users, :year_of_joining, :date
    add_column :users, :register_number, :string
    add_column :users, :sex, :string
    add_column :users, :student_class, :string
    add_column :users, :address, :text
    add_column :users, :student_registration, :text    
  end

  def self.down
    remove_column :users, :year_of_joining
    remove_column :users, :register_number
    remove_column :users, :sex
    remove_column :users, :student_class
    remove_column :users, :address
    remove_column :users, :student_registration  
  end
end

