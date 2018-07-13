class UsersController < ApplicationController
  def new	
	@user = User.new
  end
  def create
    @user = User.new(user_params)

  if @user.save

  	flash[:success] = "welcome to the alpha-blog #{@user.username}"

    redirect_to articles_path 

    else
    	render 'new'
    end

    def edit
    	@user = User.find(params[:id])
    end

    def update
    	@user = User.find(params[:id])
    	if @user.update(user_params)
    		flash[:success] = "your account was successfully updated"
         redirect_to articles_path    		
    	else
    		render'edit'
    	end
    end

end
private
def user_params
	params.require(:user).permit(:username, :email, :password)
end

 end
 