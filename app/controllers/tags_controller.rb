class TagsController < ApplicationController
def index
@tags = Tag.all
end
def show
     
      @tag = Tag.find(params[:id])
      @post_attachments = @tag.post_attachments.all
      
   end
 private
  def post_params
    params.require(:tag).permit(:name)
  end
end