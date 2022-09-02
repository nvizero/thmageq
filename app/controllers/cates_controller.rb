class CatesController < ApplicationController
  before_action :set_cate, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  before_action :authenticate_user!  # 這個是 devise 提供的方法，先檢查必須登入
  before_action :authenticate_admin  # 再檢查是否有權限
  # before_action :authenticate_level_99
  layout "bootstrap"
  # GET /cates
  # GET /cates.json
  def index
    # self.authenticate_level_99
    @p = params[:p]
    @cates = Cate.where.not(:id => 1).where(parent_id: [@p]).order(sort_column + " " + sort_direction).page(params[:page]).limit(8)
    @level = 1
  end

  def cate_about
    @cates = Cate.where(:level =>2).where.not("name like '%NO%'").order(sort_column + " " + sort_direction).page(params[:page]).limit(8)
    # @cates = @cates.where.not("name like '%NO%'")
    @title = ["公司分類","列表"]
    @level = 2
    render "index"
  end

  # GET /cates/1
  # GET /cates/1.json
  def show
  end

  # GET /cates/new
  def new
    @p = params[:p]
    @title = ["產品分類","新增產品分類"]
    @level = params[:level]
    @level_count = 2
    @cate = Cate.new
  end

  # GET /cates/1/edit
  def edit
    @p = @cate.parent_id
    @title = ["產品分類","編輯產品分類"]
    @level = params[:level]
  end

  # POST /cates
  # POST /cates.json
  def create
    @cate = Cate.new(cate_params)

    respond_to do |format|
      if @cate.save
        format.html {
          # if @cate.level.to_i == 1
            redirect_to action: "index"
          # elsif @cate.level.to_i == 2
          #   Footer.create( :cate_id=>@cate.id , :title_ch =>@cate.name)
          #   redirect_to action: "cate_about"
          # end
        }
        format.json { render :show, status: :created, location: @cate }
      else
        format.html { render :new }
        format.json { render json: @cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cates/1
  # PATCH/PUT /cates/1.json
  def update
    respond_to do |format|
      if @cate.update(cate_params)
        format.html {
          # if @cate.level.to_i == 1
            redirect_to action: "index"
          # elsif @cate.level.to_i == 2

          #   redirect_to action: "cate_about"
          # end
        }
        # format.html { redirect_to cates_url, notice: 'Cate was successfully updated.' }
        # format.json { render :show, status: :ok, location: @cate }
      else
        format.html { render :edit }
        format.json { render json: @cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cates/1
  # DELETE /cates/1.json
  def destroy
    @cate.destroy
    respond_to do |format|
      format.html { redirect_to action: 'index', notice: 'Cate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      Cate.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_cate
      @cate = Cate.find(params[:id])
    end

    def set_title
      @active = "cates"
      @title = ["產品分類","列表"]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cate_params
      params.require(:cate).permit(:name , :level , :ref_cate_id , :name_en ,:content ,:content_en, :img , :parent_id)
    end
end
