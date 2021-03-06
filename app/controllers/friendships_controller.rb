class FriendshipsController < ApplicationController
	
	before_action :authenticate_user!
	before_action :set_user, only: [:create]
	before_action :set_friendship, only: [:destroy, :accept]

	def create
		@friendship = current_user.request_friendship(@user)
		return_to_user("Friendship Created")
	end
	
	def destroy
		@friendship.destroy
		return_to_user("Friendship Deleted")
	end

	def accept
		@friendship.accept_friendship
		@friendship.create_activity key: 'friendship.accepted', owner: @friendship.user, recipient: @friendship.friend
		return_to_user("Friendship Accepted")
	end

	private

	def return_to_user(notice)
		respond_to do |format|
			format.html {redirect_to users_path, notice: notice}
		end			
	end

	def set_user
		@user = User.find(params[:user_id])
	end

	def set_friendship
		@friendship = Friendship.find(params[:id])
	end

end