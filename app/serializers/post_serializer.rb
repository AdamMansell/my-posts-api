class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :content
  has_one :user

  def created_at
    object.created_at.strftime("%d %B, %Y")
  end
end