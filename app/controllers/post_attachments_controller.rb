class PostAttachmentsController < ApplicationController
  #before_action :set_post_attachment, only: [:show, :edit, :update, :destroy]



  
  def index
    
    @post_attachments = PostAttachment.all
  end

 
  def show
    @post_attachment= PostAttachment.find(params[:id])
   send_file("#{@post_attachment.avatar}",
              type: "image/jpg",
              disposition: "attachment"
              )
  end

  
  def new
    @post_attachment = PostAttachment.new
  end

  
  def edit
    @post_attachment= PostAttachment.find(params[:id])
  end

  
 def create
    @post_attachment = PostAttachment.new(post_attachment_params)

    respond_to do |format|
      if @post_attachment.save
        format.html { redirect_to @post_attachment, notice: 'Image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post_attachment }
      else
        format.html { render action: 'new' }
        format.json { render json: @post_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  
 def update
   @post_attachment= PostAttachment.find(params[:id])
  respond_to do |format|
    if @post_attachment.update(post_attachment_params)
      format.html { redirect_to @post_attachment.post, notice: 'Post attachment was successfully updated.' }
    end 
  end
end

  def destroy
      @post_attachment= PostAttachment.find(params[:id])
       @post_attachment.destroy
       redirect_to :back
    end
  
  def download
     
  end
  private
   
    #def set_post_attachment
     # @post_attachment = PostAttachment.find(params[:id])
    #end

    
    def post_attachment_params
      params.require(:post_attachment).permit(:post_id, :avatar,)
    end
  end

