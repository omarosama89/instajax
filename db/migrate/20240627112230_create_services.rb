class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :description
      t.string :s_type
      t.string :service_family
      t.integer :minimum
      t.integer :maximum
      t.float :price
      t.integer :unit
      t.float :factor
      t.float :power
      t.float :intercept
      t.float :sale
      t.boolean :has_note
      t.string :note
      t.string :request_method
      t.boolean :active
      t.boolean :custom_comments_flag
      t.references :api, null: false, foreign_key: true

      t.timestamps
    end
  end
end
