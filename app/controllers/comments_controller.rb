class CommentsController < ApplicationController
  def new;end

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(comments_params)
    redirect_to product_path
  end
  
  def edit;end

  def update

  end

  def destroy
  end

  private

  def comments_params
    params.require(:comment).permit(:name, :body)
end
