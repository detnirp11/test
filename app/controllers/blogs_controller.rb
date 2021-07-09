class BlogsController < ApplicationController

    def index
        @blogs = Blog.all
    end    

    def new
    end
    
      #追加する内容１
  def create
    @blog= Blog.new(blog_params)
    @blog.save
    redirect_to blogs_path
  end

  def edit  
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.fing(params[:id])

    if @blog.update(blog_params)
        redirect_to blogs_path
    else
        render 'edit'
    end
  end          

  #追加する内容２
  private
  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
