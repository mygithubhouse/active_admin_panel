class PostsController < InheritedResources::Base


    def index 
      posts = Post.all
      render json: posts, status:200
      # return render json: {message:'hi shivani'}    
    end

    private

    def post_params
      params.require(:post).permit(:title, :body)
    end

end
