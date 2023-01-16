class Address < ApplicationRecord
    belongs_to :contact
  
    validates :cep, :street, :number, :district, :city, :state, :contact_id, presence: true
    validates :cep, length: {minimum:8, maximum:8}
    validates :contact, presence: true  
end
