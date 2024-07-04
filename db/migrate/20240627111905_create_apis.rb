class CreateApis < ActiveRecord::Migration[7.1]
  def change
    create_table :apis do |t|
      t.string :name
      t.string :url
      t.string :key_attr
      t.string :key
      t.string :action_attr
      t.string :order_id_attr
      t.string :amount_attr
      t.string :link_attr
      t.string :type_attr
      t.string :custom_comments_attr
      t.string :username

      t.timestamps
    end
  end
end
