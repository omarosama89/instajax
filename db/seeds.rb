# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  api = Api.create!(
    name: 'Sushi-panel', username: 'sushi', url: 'https::/url', key_attr: 'key', key: 'iamkey',
    action_attr: 'action', order_id_attr: 'irderid', amount_attr: 'amount', link_attr: 'link',
    type_attr: 'type', custom_comments_attr: 'custom_comments'
  )
  Service.create!(
    description: 'Likes', s_type: '123', service_family: 'likes', minimum: 25, maximum: 1000,
    price: 1, unit: 1, factor: 1, power: 1, intercept: 1, sale: 0, has_note: false, request_method: 'post',
    active: true, custom_comments_flag: false, api: api
  )
end
