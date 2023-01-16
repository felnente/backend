class AddressSerializer < ActiveModel::Serializer
  belongs_to :contact

  attributes :id, :contact_id, :cep, :street, :number, :district, :city, :state
end

