class CreateOrderRows < ActiveRecord::Migration[7.1]
  def change
    create_table :order_rows do |t|
      t.string :order_code
      t.boolean :verified
      t.references :client, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.float :paid
      t.string :payment_id
      t.float :net
      t.string :transaction_id
      t.string :client_ip
      t.boolean :created_by_admin
      t.integer :kind

      t.timestamps
    end
  end
end
