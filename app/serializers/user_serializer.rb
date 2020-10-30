class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :nickname

  has_many :posts

  def created_at
    object.created_at.strftime("%d %B, %Y")
  end

  def nickname
    "Nick #{object.name}"
  end
end
