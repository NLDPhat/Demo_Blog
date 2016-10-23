class CommentsController < ApplicationController
before_action :set_comment, only: [:edit, :destroy]
    def create
        @blog = Blog.find(params[:blog_id])

        @comment = @blog.comments.create(comment_params)

        redirect_to blog_path(@blog) 
    end

    def destroy
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
        @comment.destroy
        respond_to do |format|
            format.html { redirect_to blog_path(@blog) }
            format.json { head :no_content }
        end
    end

    private
    def set_comment
        @comment=Comment.find(params[:id])
    end
    def comment_params
      	params.require(:comment).permit(:Per, :body)
    end
end
