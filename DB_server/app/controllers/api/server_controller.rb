class Api::ServerController < ApplicationController
  # おまじない
  skip_before_action :verify_authenticity_token, only: :create

  def create
    data = Data.new(create_params_name)

    # エラー処理
    unless data.save
      @error_message = [data.errors.full_messages].compact
    end
  end

  private

  # データを検知
  def create_params_name
    # 通信の種類を判定する
    params.permit(:name)
  end

end
