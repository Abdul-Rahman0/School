class ClassNamesController < ApplicationController
  def new
    @class_name = ClassName.new
    @class_name.subjects.build
  end

  def create
    @class_name = ClassName.new(class_name_params)

    if @class_name.save
      redirect_to portal_info_path, notice: "Class and subjects were successfully created."
    else
      render :new  # Re-render the new form with errors
    end
  end

  private

  def class_name_params
    params.require(:class_name).permit(:name, subjects_attributes: [:id, :name, :code, :_destroy])
  end
end
