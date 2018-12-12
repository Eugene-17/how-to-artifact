class HomeController < ApplicationController
  def index
    @posts = Post.order(:created_at).reverse_order
    @top_post = Post.where(featured: true).order(:updated_at).first
    @top_news = Post.where(featured: true, category_id: 2).order(:updated_at).second
    @top_guide = Post.where(featured: true, category_id: 2).order(:updated_at).first
    @author = User.all
    @post_images  = PostImage.all
  end
end
