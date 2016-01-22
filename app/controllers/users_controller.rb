class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@errors = flash[:errors]
	end
	def create
		@user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		if @user.valid?
			@user.save
			redirect_to '/users'
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to '/users/new'
		end
	end
	def show
		@user = User.find(params[:id])
		puts @user
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		redirect_to '/users'
	end
	def destroy
		@destroy = User.find(params[:id]).destroy
		redirect_to '/users'
	end
end