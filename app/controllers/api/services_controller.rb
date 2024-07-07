class ServicesController < ApiController
  def index
    res = GetServices.run
    render json: res
  end
end
