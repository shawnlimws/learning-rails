class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    # is like this
    # @comment = Comment.new
    # @comment.post_id = @post.id

    if !@comment.save
      flash[:error] = "Comment failed to save."
    else
      redirect_to post_path(@post)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post

    if !@comment.destroy
      flash[:error] = "Comment failed to delete"
    else
      redirect_to post_path(:id => @post.id) # or root_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
