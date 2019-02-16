class Api::ServerController < ApplicationController
  # おまじない
  skip_before_action :verify_authenticity_token, only: :create

  def create

    data = Data.new(create_params_id)

    unless data.save
      @error_message = [data.errors.full_messages].compact
    end

    data = Data.new(create_params_name)

    # エラー処理
    unless data.save
      @error_message = [data.errors.full_messages].compact
    end

    data = Data.new(create_params_jender)

    unless data.save
      @error_message = [data.errors.full_messages].compact
    end

    data = Data.new(create_params_hobby)

    unless data.save
      @error_message = [data.errors.full_messages].compact
    end

    data = Data.new(create_params_from)

    unless data.save
      @error_message = [data.errors.full_messages].compact
    end

  end

  private

  # データを検知
  def create_params_id
    params.permit(:id)
  end

  def create_params_name
    # 通信の種類を判定する
    params.permit(:name)
  end

  def create_params_jender
    params.permit(:jender)
  end

  def criate_params_hobby
    params.parmit(:hobby)
  end

  def criate_params_from
    params.parmit(:from)
  end

end
