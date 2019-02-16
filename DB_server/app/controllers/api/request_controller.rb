class Api::RequestController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    ids = Frends.new(create_params_id)

    # エラー処理
    unless ids.save
      @error_message = [ids.errors.full_messages].compact
    end

    ids = Frends.new(create_params_userid)
    unless ids.save
      @error_message = [ids.erorrs.full_messages].compact
    end

    ids = Friends.new(create_params_friendid)
    unless ids.save
      @erorr_message = [ids.errors.full_messages].compact
    end
  end


  private
  def create_params_id
    params.permit(:id)
  end
  def create_params_userid
    params.permit(:userid)
  end
  def create_params_friendid
    params.permit(:friendid)
  end
end
