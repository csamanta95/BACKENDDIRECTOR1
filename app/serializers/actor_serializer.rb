  
class ActorSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :experience, :image
    has_many :comments
    # has_one :director
  end