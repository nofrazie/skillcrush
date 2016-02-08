class Blog
	@@blog_post = 0
	@@blogs = Array.new

	attr_reader :blogs

	def pub
		puts @@blogs
	end

	def initialize
		@@blog_post += 1
	end
end

class BlogPost < Blog
	attr_accessor :title, :content, :pub_date, :author

	def initialize(title, content, author)
		@title = title
		@content = content
		@author = author
	end

	def save
		time = Time.new
		@pub_date = time.inspect
		@@blogs.push(@title, @content, @pub_date, @author)
	end

end

def add_another_blog?
	puts "Do you want to add another Blog? [y/n]"
	answer = gets.chomp.downcase
	if answer == 'y'
		return true
	elsif answer == 'n'
		return false
	else
		puts "Sorry can you repeat your answer?"
		add_another_blog?
	end
end

while add_another_blog?
	print "What is your title: "
	title = gets.chomp
	print "What is your content: "
	content = gets.chomp
	print "Who is the author: "
	author = gets.chomp
	new_blog = BlogPost.new(title, content, author)
	new_blog.save
end

new_blog.pub
