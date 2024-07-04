class Service < ApplicationRecord
  REQUEST_METHODS = %W(get post)
  SERVICE_FAMILIES = %W(likes followers video_views comments custom_comments)

  belongs_to :api

  validates :request_method, inclusion: REQUEST_METHODS
  validates :service_family, inclusion: SERVICE_FAMILIES
end
