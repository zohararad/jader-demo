class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Jader::Serialize

  jade_serializable :id, :title, :content, :comments, :merge => true

  field :title, type: String
  field :content, type: String
  field :_id, as: :id, type: Moped::BSON::ObjectId

  embeds_many :comments

end
