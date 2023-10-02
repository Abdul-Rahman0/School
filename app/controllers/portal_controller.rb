class PortalController < ApplicationController
  def info
    @current_school_login = current_school_login

    case current_school_login.role.to_sym
    when :admin
      @students = SchoolLogin.all
      @teachers = Teacher.all
      @subjects = Subject.all
    when :teacher
      @teacher = current_school_login
    when :student
      @student = current_school_login
    end

  end
  def create_class_subject
    @class_name = ClassName.new(class_name_params)
  
    if @class_name.save
      # Create subjects based on the form input (you may need to modify this based on your schema)
      subjects = params[:class_name][:subject].split(',').map(&:strip)
      subjects.each do |subject_name|
        @class_name.subjects.create(name: subject_name, code: generate_subject_code)
      end
  
      redirect_to portal_info_path, notice: "Class and subjects were successfully created."
    else
      render :new_class_subject
    end
  end
  
  private
  
  def class_name_params
    params.require(:class_name).permit(:name)
  end
  
  def generate_subject_code
    SecureRandom.hex(3).upcase
  end
  
end