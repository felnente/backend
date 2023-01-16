class AddToContactToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :contact, null: false, foreign_key: true
  end
end
