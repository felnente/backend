class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :cpf, null: false, unique: true
      t.date :birth

      t.timestamps
    end
  end
end
