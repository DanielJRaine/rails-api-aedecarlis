class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :artform, :portfolio, :section
end
