#This page containd all of the code for any page inside of /pages
class PagesController < ApplicationController

  #back-end code for pages/index
  def Index
  end

  #back-end code for pages/index
  def home
	@posts = Post.all
  end

 #back-end code for pages/index
  def profile
	  #Grabs the username from the URL as :id
	if (User.find_by_username(params[:id]))
		@username = params[:id]
	else
		#redirect to 404 (root for now)
		redirect_to root_path, :notice=> "User not found!"
                end

	@posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)

  end

  #back-end code for pages/index
  def explore
	@posts = Post.all
  end
end
