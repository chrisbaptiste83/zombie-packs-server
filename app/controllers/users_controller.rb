class UsersController < ApplicationController 

    wrap_parameters :user, include: [:password, :password_confirmation,:username, :email]
  
    def index 
      users = User.all
      if users 
        render json: {
          status: 200,
          users: UserSerializer.new(users)
        }
      end
    end
  
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: {
          status: 200,
          user: UserSerializer.new(user)
        }
      else 
        render json: {
          status: 409,
          passwordError: user.errors.messages[:password],
          password_confirmation_error: user.errors.messages[:password],
          username_error: user.errors.messages[:username]
        }
      end
    end
  
    def show 
      user = User.find(params[:id])
      if user 
        render json: {
          status: 200,
          user: UserSerializer.new(user)
        }
      end
    end
  
     def update 
        user = User.find(params[:id])
        if user && user.update(user_params)
          render json: {
            status: 200,
            user: UserSerializer.new(user)
          }
        else 
          render json: {
            status: 409,
            error: user.errors.full_messages
          }
        end
      end
  
    
  
    def destroy 
      user = User.find(session[:user_id])
      if user && session.clear
        user.destroy
        render json: {
          status: 200,
          user: UserSerializer.new(user)
        }
        else 
          render json: {
            status: 500,
            error: user.errors.full_messages
          }
        end
    end
  
    private 
  
    def user_params 
      params.require(:user).permit(:password, :password_confirmation, :username, :email)
    end
end
