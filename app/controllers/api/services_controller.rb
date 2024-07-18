class Api::ServicesController < Api::ApiController
  def index
    res = GetServices.run!
    render json: res
  end
end
