class UnlikesController < ApplicationController
   before_action :find_post
   before_action :find_unlike, only: [:destroy]

   def create
     if already_unliked?
       flash[:notice] = "You can't unlike more than once"
     else
       @post.unlikes.create(user_id: current_user.id)
     end
     redirect_to post_path(@post)
   end

   def destroy
     if !(already_unliked?)
       flash[:notice] = "Cannot unlike"
     else
       @unlike.destroy
     end
     redirect_to post_path(@post)
   end

  private

  def already_unliked?
    Unlike.where(user_id: current_user.id, post_id:
    params[:post_id]).exists?
  end


  def find_unlike
    @unlike = @post.unlikes.find(params[:id])
  end





  def find_post
    @post = Post.find(params[:post_id])
  end
end
