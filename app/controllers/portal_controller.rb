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
end
