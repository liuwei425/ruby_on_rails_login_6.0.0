class PostviewController < ApplicationController
    layout "homelayout"
    def index
        if params[:category].blank?
            @posts = Post.all.order("created_at DESC")
            @categories = Category.all.order("created_at DESC")
        else
            @category_id = params[:category]
            @posts = Post.where(category_id: @category_id).order("created_at DESC")
            puts @posts.inspect
            @categories = Category.all.order("created_at DESC")
        end
    end
    def shown
        @post_id = params[:post]
        @post = Post.find(@post_id)
    end
end
