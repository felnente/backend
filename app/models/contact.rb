class Contact < ApplicationRecord
  include ActiveModel::Serialization
    has_many :address
  
    validates :name, :email, :cpf, :birth, presence: true
    validates :email, :cpf, uniqueness: true
    validate :cpf_valid?
  
    def cpf_valid?
      return if CPF.valid?(cpf)
  
      errors.add(:cpf)
    end
  
    scope :sorted_by_name, -> { order(:name) }
  
    scope :search, ->(name) { where('name ILIKE ?', "%#{name}%") if name.present? }
end
  