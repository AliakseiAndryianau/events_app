# frozen_string_literal: true

class WelcomeController < BaseController

  def index
    # render json: UserSerializer.new(current_user, { params: { query_type: params[:query_type] } })
    render json: UserSerializer.new(current_user, { params: { query_type: 'by_active_meets' } })
  end

end
