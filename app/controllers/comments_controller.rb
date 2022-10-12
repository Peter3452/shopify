class CommentsController < ApplicationController
  before_action :set_comments, only: [:edit, :update, :destroy ]

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(comments_params)
    redirect_to product_path(@product)
  end
  
  def edit
  end

  def update
    @comment.update(comments_params)
    redirect_to product_path(@product)
  end

  def destroy
    @comment.destroy
    redirect_to product_path(@product)
  end

  private

  def set_comments
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:name, :body)
  end
end
