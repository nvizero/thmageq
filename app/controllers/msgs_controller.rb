class MsgsController < ApplicationController
  before_action :set_msg, only: [:show, :edit, :update, :destroy]
  before_action :set_title

  before_action :authenticate_user!  # 這個是 devise 提供的方法，先檢查必須登入
  before_action :authenticate_admin  # 再檢查是否有權限
  helper_method :sort_column, :sort_direction

  layout "bootstrap"
  # GET /msgs
  # GET /msgs.json
  def index
    @p = params[:p]
    @cates_p = []
    cates = Cate.where(parent_id: @p)

    cates.each do |cate|
      @cates_p.push cate.id
    end
    # where(cate_id:[@cates_p])
    @msgs = Msg.where(cate_id:[@cates_p]).order(sort_column + " " + sort_direction).page(params[:page]).limit(12)
  end

  

  def ajax_msgs
    ids        = params[:ids]

    msgs      = Msg.where(cate_id: ids.split(",").map(&:to_i) )    

    html_data = ""
    html_data += "<br/>"
    msgs.each do |msg|      
      html_data += "<span style=\"margin:0px 0px 0px 19px;float: left;\" >"
      html_data += "<input type=\"checkbox\" name=\"ref[#{msg.id}]\" value=\"#{msg.id}\" > "
      html_data += "<font color=\"red\">#{msg.cate.name}</font>-"
      html_data += "#{msg.title} / #{msg.title_en}"
      html_data += "</span>"
    end

    html_data += "<br/>"

    render :text => "#{html_data}"
  end
  # GET /msgs/1
  # GET /msgs/1.json
  def show
  end

  # GET /msgs/new
  def new 
    @title    = ["產品","新增產品"]           
    @msg      = Msg.new
  end

  # GET /msgs/1/edit
  def edit

    
    @title    = ["產品","編輯產品"]
     
    
    
    @cate_id = @msg.cate_id

  end

  # POST /msgs
  # POST /msgs.json
  def create
    @msg = Msg.new(msg_params)

    # respond_to do |format|

      # @msg.user_id = current_user.id

      if @msg.save
        
        redirect_to action: "index"
        
        # format.html { redirect_to action: index , notice: 'Msg was successfully created.' }
        # format.json { render :show, status: :created, location: @msg }

      else
        format.html {render :new}
        format.json {render json: @msg.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /msgs/1
  # PATCH/PUT /msgs/1.json
  def update
    # respond_to do |format|

      # @msg.user_id = current_user.id

      if @msg.update(msg_params)

        
        redirect_to action: "index"
        
        # format.html { redirect_to msgs_url, notice: 'Msg was successfully updated.' }
        # format.json { render :show, status: :ok, location: @msg }
      else
        # format.html { 
          render :edit 
        # }
        # format.json { render json: @msg.errors, status: :unprocessable_entity }
      end
    # end
  end

  # DELETE /msgs/1
  # DELETE /msgs/1.json
  def destroy
    @msg.destroy

    respond_to do |format|
      format.html { redirect_to msgs_url, notice: 'Msg was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def sort_column
      Msg.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

    def set_msg
      @msg = Msg.find(params[:id])
    end

    def set_title

      @active = "msgs"
      @title = ["產品","列表"]
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def msg_params
      params.require(:msg).permit(:title, :title_en , :cate_id, :user_id, :content, :content_en ,:img , :sort)
    end
end
