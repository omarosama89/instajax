class CreateOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :order_details do |t|
      t.string :link
      t.boolean :verified
      t.string :api_order_id
      t.integer :status
      t.references :order_row, null: false, foreign_key: true

      t.timestamps
    end
  end
end
