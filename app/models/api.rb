class Api < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["action_attr", "amount_attr", "created_at", "custom_comments_attr", "id", "key", "key_attr", "link_attr", "name", "order_id_attr", "type_attr", "updated_at", "url", "username"]
  end
end
