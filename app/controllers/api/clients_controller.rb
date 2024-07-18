class Api::ClientsController < Api::ApiController
  def index
    res = InstagramUserFeed.run!(index_params)

    render json: res
  end

  private

  def index_params
    params.permit(:username)
  end
end
