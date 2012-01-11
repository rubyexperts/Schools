class StudentsController < ApplicationController

    before_filter :login_required

    def index
      if !params[:studentid].nil?
	       @student =  Student.find_by_id(params[:studentid])
      end
	  end

  
end
