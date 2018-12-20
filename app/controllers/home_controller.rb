class HomeController < ApplicationController
  def index
    @posts = Post.order(:created_at).reverse_order
    @top_post = Post.where(featured: true).order(:updated_at).first

    if(Post.where(featured: true, category_id: 2).order(:updated_at).count >= 2 )
      @top_news = Post.where(featured: true, category_id: 2).order(:updated_at).second
      @top_guide = Post.where(featured: true, category_id: 2).order(:updated_at).first
    else
      @top_news = Post.where(category_id: 2).order(:updated_at).second
      @top_guide = Post.where(category_id: 2).order(:updated_at).first
    end
    @author = User.all
    @post_images  = PostImage.all
  end
end
