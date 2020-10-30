class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :nickname

  def created_at
    object.created_at.strftime("%d/%m/%Y")
  end

  def nickname
    "Nick #{object.name}"
  end
end
