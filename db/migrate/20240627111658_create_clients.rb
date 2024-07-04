class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :email
      t.string :phone_number
      t.string :first_name
      t.string :last_name
      t.string :payer_id
      t.string :country
      t.string :state
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
