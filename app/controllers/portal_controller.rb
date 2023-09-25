class PortalController < ApplicationController
  def info
   if current_school_login.admin?
      @students = Student.all
      @teachers = Teacher.all
    elsif current_school_login.teacher?
      @teacher = Teacher.find_by(id: current_school_login.id)
    elsif current_school_login.student?
      @student = Student.find_by(id: current_school_login.id)
    end
  end
end
