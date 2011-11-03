class UsersController < ActionController::Base
  protect_from_forgery

def index
  @users = User.all
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
    redirect_to user_path(@user)
  else
    flash[:error] = "Sorry, this didn't work"
    render "edit"
  end  
end

def new
    @user = User.new()
end

def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Created User"
      redirect_to user_path(@user)
    else
      flash[:error] = "Sorry, this didn't work"
      render "new"
    end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to(users_path)
end

end