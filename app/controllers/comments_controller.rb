class CommentsController < ApplicationController 
    before_action :set_comment, only: [:show, :update, :destroy]

    def index
      @comments = Comment.all
      render json: CommentSerializer.new(@comments)
    end
  
    
    def show
      render json: CommentSerializer.new(@comment)
    end
  
    def create
      @comment = Comment.new(comment_params)
      if comment.save
        render json: CommentSerializer.new(@comment), status: :created, location: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @comment.update(comment_params)
        render json: CommentSerializer.new(@comment)
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @comment.destroy
    end
  
    private
      def set_comment
        @comment = Comment.find(params[:id])
      end
  
      
      def comment_params
        params.require(:comment).permit(:user_id, :tactical_package_id, :content)
      end
end
