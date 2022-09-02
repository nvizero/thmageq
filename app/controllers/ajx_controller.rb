class AjxController < ApplicationController
  # skip_before_action :verify_authenticity_token # 整個 ApisController 關閉檢查
  skip_before_action :authenticate_user!, raise: false
  # protect_from_forgery with: :exception


  def del_something


      if 'msgs' == params[:action_name]
          msg = Msg.find(params[:id])
          msg.destroy
          render :text=>"1"
      elsif 'cates' == params[:action_name]
          cate = Cate.find(params[:id])
          cate.destroy
          render :text=>"1"
      elsif 'events' == params[:action_name]
          cate = Event.find(params[:id])
          cate.destroy
          render :text=>"1"
      else
          render :text=>"2"
      end


  end

end
