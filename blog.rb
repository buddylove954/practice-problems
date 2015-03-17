class Blog
	attr_reader :blogs

		def initialize
		@blogs = []
	end

	def add(posts)
		@blogs.push(posts)
	end

	def print
		@blogs.each do |i|
			puts i
		end
	end


	
end

	class Post
		attr_reader(:title, :input)
		def initialize(title, input)
		@title = title
		@input = input
	end

	def to_s
      return "                #{@title}
             ***********
        #{@input}
        ____________________"
    end

end



		

name = Blog.new
new_post = Post.new("hello", "the first blog post")
new_post_1 = Post.new("heddo", "te first blog post")
name.add(new_post.to_s)
name.add(new_post_1.to_s)

name.print



#store blog post
#print blog post in style
#get user info
#sponsored post