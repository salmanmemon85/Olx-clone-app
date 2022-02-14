class PostsController < ApplicationController

    before_action :require_login, only: [:new, :create, :destroy]

    def index
    @posts = Post.all
    end

   

    def edit
    @post = Post.friendly.find(params[:id])
    end

    def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
    end
    
    def show
    @post = Post.friendly.find(params[:id])
    @message = Message.new
    end
    def new
    @post = Post.new
    end

    def create
    @post = current_user.posts.create(posts_params)
    @post.save
    redirect_to posts_path
    end


 

    def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    end


    private

    def posts_params
    params.require(:post).permit(:title,:mfg,:price,:desc,:model,:km,:category_id,images:[])
    end
end
