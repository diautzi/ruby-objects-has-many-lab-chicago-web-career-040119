class Author

  attr_accessor :name, :posts
  @@count = 0
  
  def initialize(name)
    @name=name
    @posts =[]
  end

  def add_post(post)
  @posts << post
  post.author  = self
  @@count +=1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    # @posts << title
    # title.author = self
    # @@count +=1
    add_post(title)
  end

  def self.post_count
  @@count
end

end
