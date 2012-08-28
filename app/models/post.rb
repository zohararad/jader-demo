class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Jader::Serialize

  jade_serializable :title, :content, :comments, :merge => true

  field :title, type: String
  field :content, type: String

  embeds_many :comments

end
