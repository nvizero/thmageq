class FootersController < ApplicationController
  before_action :set_footer, only: [:show, :edit, :update, :destroy ,:edit_slug]
  before_action :set_title

  before_action :authenticate_user!  # 這個是 devise 提供的方法，先檢查必須登入
  before_action :authenticate_admin  # 再檢查是否有權限
  helper_method :sort_column, :sort_direction

  layout "bootstrap"

  # GET /footers
  # GET /footers.json
  def index
    @footers = Footer.all
    # @title = ["基本資訊","修改"]
    # @footer = Footer.find(1)
    # render "edit"
  end


  # GET /footers/1
  # GET /footers/1.json
  def show
  end

  # GET /footers/new
  def new
    @title = ["產業","新增"]
    @set_footer_cate_id = Cate.where("name = 'NO'").first
    @footer = Footer.new
  end

  # GET /footers/1/edit
  def edit
    @footer_cates = RefFooterCate.where(:footer_id => @footer.id)
    @title = ["產業","修改-"+@footer.title_ch]
    @set_footer_cate_id = Cate.where("name = 'NO'").first
  end

  # POST /footers
  # POST /footers.json
  def create
    @footer = Footer.new(footer_params)

    respond_to do |format|
      if @footer.save
        refs = params[:ref]
        if !refs.nil?
          refs.each do |ref|
            FooterMsg.create(:footer_id=> @footer.id , :msg_id => ref )
          end
        end  

        format.html { redirect_to footers_url, notice: 'Footer was successfully created.' }
        format.json { render :show, status: :created, location: @footer }
      else
        format.html { render :new }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footers/1
  # PATCH/PUT /footers/1.json
  def update
    # respond_to do |format|
      # console
      if @footer.update(footer_params)
        # redirect_to: @footer
          refs = params[:ref]
          if !refs.nil?
            ref_footer_cates = FooterMsg.where(:footer_id => @footer.id)
            if !ref_footer_cates.nil?
              FooterMsg.where(:footer_id => @footer.id).destroy_all
            end

            refs.each do |ref|
              FooterMsg.create(:footer_id=> @footer.id , :msg_id => ref )
            end
          end

          redirect_to controller: "footers" , action: "index"

        # format.html { redirect_to @footer, notice: 'Footer was successfully updated.' }
        # format.json { render :show, status: :ok, location: @footer }
      else


          # redirect_to controller: "footers" , action: "index"


        format.html { render :edit }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    # end
  end

  # DELETE /footers/1
  # DELETE /footers/1.json
  def destroy
    @footer.destroy
    respond_to do |format|
      format.html { redirect_to footers_url, notice: 'Footer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      Footer.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end



    def set_title

      @active = "footers"
      @title = ["產業","列表"]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_footer
      @footer = Footer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footer_params
      params.require(:footer).permit( :title_ch ,:title_en , :address_ch, :address_en, :tel, :img, :sort , 
                                      :email, :sub_ch , :sub_en ,:fax , :content_ch ,:content_en ,:cate_id )
    end
end
