class UsersController < ApplicationController
  
  helper_method :sort_column, :sort_direction

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate, only: [:show, :edit, :update]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  # GET /users
  # GET /users.json
  def index
   #@users = User.paginate(:page => params[:page])
    @users = User.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 15, :page => params[:page])  
    #@users = User.order(sort_column + ' ' + sort_direction).paginate(:per_page => 15, :page => params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @microposts = @user.microposts.paginate(:page => params[:page])
    #@micropost = @user.microposts.new
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if @user.destroy
      redirect_to root_path, :flash => {:success1 => "User was successfully destroyed!!"}
    #else
     # redirect_to root_path, :flash => {:error1 => "You have no admin right!!"}
    end

  end

  def edu_news
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :age, :sex, :email, :password, :password_confirmation, :admin, :profile_pic)
    end

    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path, :flash => {:error1 => "You have no access to this information!!"} unless current_user?(@user)  # current_user? method defined in sessions_helper
    end

    def admin_user
      redirect_to users_path, :flash => {:error1 => "You have no admin rights!!"} unless (current_user.admin? && !current_user?(@user))
    end

    #pagination helpers

    def sort_column
     User.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
