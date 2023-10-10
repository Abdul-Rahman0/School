class TeachersController < ApplicationController
  def index
 
  end
  def new
    @teacher = Teacher.new
  end
  def edit
    @teacher = Teacher.find(params[:id])
  end
    def show
    @teacher = Teacher.find(params[:id])
  end

  # PATCH/PUT /teachers/1
  def update
    @teacher = Teacher.find(params[:id])

    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Teacher was successfully updated.'
    else
      render :edit
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :email, :class_name_ids => [], :subject_ids => [])
  end
end
