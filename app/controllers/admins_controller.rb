class  AdminsController < BaseController
  #s include Accessible
  #layout "_adminshome"
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  before_action :check_manager, only: [:new, :edit, :update, :destroy]
  def index
    @admins = Admin.all
  end
  def  statistic
  end
  def homepage
  end
  # GET /categories/1
  # GET /categories/1.json
  def show
  end
  # GET /categories/new
  def new
      @admins = Admin.new
  end
  # GET /categories/1/edit
  def edit
  end
  # POST /categories
  # POST /categories.json
  def create
    @admins = Admin.new(admin_params)
    respond_to do |format|
      if @admins.save
        format.html { redirect_to admins_path, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admins }
      else
        format.html { render :new }
        format.json { render json: @admins.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @admins.update(admin_params)
        format.html { redirect_to admins_path, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admins }
      else
        format.html { render :edit }
        format.json { render json: @admins.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    if @admins.id != current_admin.id 
      @admins.destroy
      respond_to do |format|
        format.html { redirect_to admins_path, notice: 'Admin was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admins = Admin.find(params[:id])
  end
  def admin_params
    params.require(:admin).permit(:email, :password)
  end
  def check_manager
    if current_admin.id != Admin.first.id
      redirect_to admins_path,alert: "The largest manager is allowed to new/edit"
    end
  end
end
