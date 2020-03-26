class DirectorSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :actors
  end