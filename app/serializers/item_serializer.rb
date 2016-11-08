class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :artform, :portfolio, :section, :upload_url
end
