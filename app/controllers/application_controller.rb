class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  # before_action :authenticate_user!
  before_action :set_locale ,:set_footer_init
  # before_action :set_timezone

  def authenticate_admin
    unless current_user.admin?
      flash[:notice] = "Not allow!"
      redirect_to root_path
    end
  end

  def authenticate_level_99
    unless current_user.level_99?
      flash[:notice] = "Not allow!"
      redirect_to root_path
    end
  end

  rescue_from ActionController::RoutingError, with: :rescue404

  def rescue404(e)
    @exception = e
    # render 'errors/not_found', status: 404
    render :render=>'qqqq'
  end

  #多國語言
  def set_locale
    # 可以將 ["en", "zh-TW"] 設定為 VALID_LANG 放到 config/environment.rb 中
    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
      session[:locale] = params[:locale]
    end
    if session[:locale].nil?
      session[:locale] = "en"
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end

  def set_footer_init

    # @cate_by_company = Cate.where("name = 'not'").first
    # @companies_data = Footer
    #                   .select("footers.id as id , cates.name as name , cates.name_en as name_en")
    #                   .joins(:cate)
    #                   .where("cates.level = 2 AND cates.id != #{@cate_by_company.id}")

  end

  #設定時區
  # def set_timezone
  #     Time.zone = "Taipei"
  #   #  if current_user && current_user.time_zone
  #   #     Time.zone = current_user.time_zone
  #   #   end
  # end

end
