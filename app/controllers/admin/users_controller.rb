class Admin::UsersController < Admin::ApplicationController
    
  def index
    @users = User.all
    # find_for_table(params) do |b|
    #     b.batch_moo { |ids| render :text => "Mooo: #{ids.join(",")}" }
    #   end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Updated User"
      redirect_to admin_user_path(@user)
    else
      flash[:error] = "Sorry, this didn't work"
      render "edit"
    end  
  end

  def new
      @title = "Add new user"
      @user = User.new()
  end

  def create
      @user = User.new(params[:user])
      if @user.save
        flash[:notice] = "Created User"
        redirect_to admin_users_path
      else
        flash[:error] = "Sorry, this didn't work"
        render "new"
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(admin_users_path)
  end

end