class NewsController < ApplicationController
  def index
    @news = Post.order(:created_at).reverse_order.page(params[:page])
    @top_article = Post.where(featured: true).order(:updated_at).first
    @news_image = PostImage.all
    @author = User.all
  end
end
