class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment, :airline_id, :user_id
end
