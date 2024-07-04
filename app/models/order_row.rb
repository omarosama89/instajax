class OrderRow < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["client_id", "client_ip", "created_at", "created_by_admin", "id", "kind", "net", "order_code", "paid", "payment_id", "service_id", "transaction_id", "updated_at", "verified"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["client", "service"]
  end

  belongs_to :client
  belongs_to :service
end
