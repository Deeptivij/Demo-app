
class PostsController < ApplicationController
   def index
     
      @posts = Post.all
      @user =current_user
      
      
      
       respond_to do |format|
      format.html
      format.js
      end
      
   end
   def show
      @post = Post.find(params[:id])
      @post_attachments = @post.post_attachments.all
      @post_attachment = @post.post_attachments.first
      
       respond_to do |format|
      format.html{ render :layout => !request.xhr? }
      format.js
      end
      
   end
   def new
     
     @post = Post.new
     2.times do
     @post_attachment = @post.post_attachments.build
     @tag = @post_attachment.tags.build 
     end
     
   end
   def edit
     
     @post = Post.find(params[:id])
     @post_attachment = @post.post_attachments.build
     
    end
 

   def create
     @post = current_user.posts.new(post_params)
     if @post.save
       redirect_to @post
     else
       render action: 'new'
     end
     end
    def update
     
     @post = Post.find(params[:id])
     
    
        if @post.update(post_params)
          redirect_to @post
        else
          render 'edit'
        end
     end
     
     def destroy
       @post= Post.find(params[:id])
       @post.destroy
       redirect_to posts_path
  
     end
     
    private
  def post_params
    params.require(:post).permit(:title, :description, post_attachments_attributes: [:avatar ,tags_attributes: [:name]])
  end
end
