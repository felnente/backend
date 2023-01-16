class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :cpf, :email
  attribute :birth 

  def birth
    object.birth.strftime "%d/%m/%Y"
  end

  has_many :address
end
