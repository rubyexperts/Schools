class HomeController < ApplicationController

	before_filter :login_required
	layout 'default'

	def index
	  @select = "home"
	  @students = Student.find(:all)
	  @first_names = @students.collect(&:first_name).to_s.chop.delete "["
	  @student_ids = @students.collect(&:id).to_s.chop.delete "["
	end

end
