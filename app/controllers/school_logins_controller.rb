class SchoolLoginsController < ApplicationController
 

  # GET /school_logins or /school_logins.json
  def index
    @school_logins = SchoolLogin.all
  end

  # GET /school_logins/1 or /school_logins/1.json
  def show
    @school_login = SchoolLogin.find(params[:id])
  end

  # GET /school_logins/new
  def new
    @school_login = SchoolLogin.new
  end

  # GET /school_logins/1/edit
  def edit
    @school_login = SchoolLogin.find(params[:id])
  
  end

  # POST /school_logins or /school_logins.json
  def create
    @school_login = SchoolLogin.new(school_login_params)

    respond_to do |format|
      if @school_login.save
        format.html { redirect_to @school_login, notice: "School login was successfully created." }
        format.json { render :show, status: :created, location: @school_login }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_logins/1 or /school_logins/1.json
# PATCH/PUT /school_logins/1 or /school_logins/1.json
def update
  @school_login = SchoolLogin.find(params[:id]) # Ensure the record exists

  respond_to do |format|
    if @school_login.update(school_login_params)
      format.html { redirect_to @school_login, notice: "School login was successfully updated." }
      format.json { render :show, status: :ok, location: @school_login }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @school_login.errors, status: :unprocessable_entity }
    end
  end
end


  # DELETE /school_logins/1 or /school_logins/1.json
  def destroy
    @school_login = SchoolLogin.find(params[:id])
    @school_login.destroy
    respond_to do |format|
      format.html { redirect_to school_logins_url, notice: "School login was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_school_login
    @school_login = SchoolLogin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def school_login_params
    params.require(:school_login).permit(:name, :class_name_id, :subject_id, :email, :password, :password_confirmation)
  end
end
