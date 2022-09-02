class ActivitiesController < ApplicationController

  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  layout "bootstrap"

  # GET /activities
  # GET /activities.json
  def index
    #qweqweqwe
    @activities = Activity.order(sort_column + " " + sort_direction).page(params[:page]).limit(12)
    # @activities.destroy_all
  end

  def excel

    @products = Activity.find(params[:id])
    #如果有額外的欄位
    # if !@products.other_table_name.nil?
    sql = "select * from `other_#{@products.other_table_name}`"

    # @records_array = ActiveRecord::Base.connection.execute(sql)

    @connection = ActiveRecord::Base.connection
    @esult = @connection.exec_query(sql)
    # end

    respond_to do |format|
      format.html
      # format.csv { send_data @products.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end


  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end


  def store_field

  end
  # POST /activities
  # POST /activities.json
  def create

    @activity = Activity.new(activity_params)



    # @connection = ActiveRecord::Base.connection
    # result = @connection.exec_query('select tablename from system.tables')


    # render :json => @activity.to_json

    # respond_to do |format|
      if @activity.save
        #如果欄位還有大於1
        random_table_name = (0...8).map { (65 + rand(26)).chr }.join
        @activity.other_table_name = random_table_name
        @activity.save





        if !@activity.column_num.nil? && @activity.column_num.to_i > 0
              # redirect_to :action => "add_a_column"
              # render :add_a_column
              # redirect_to(:action => "index" )and return if @activity.nil?


              render :action => "add_a_column" , :locals => { :activity => @activity.column_num }

              # return redirect_to("add_a_column")
        else

            #欄位為0
            _sql = "CREATE TABLE `other_#{@activity.other_table_name}` ( " +
                    " `id` int(11) NOT NULL AUTO_INCREMENT, " +
                    " `name` varchar(255) DEFAULT NULL, "+
                    " `sex` varchar(255) DEFAULT NULL, "+
                    " `phone` varchar(255) DEFAULT NULL, "+
                    " `birthday` date DEFAULT NULL, "+
                    " `address` varchar(255) DEFAULT NULL, "+
                    " `email` varchar(255) DEFAULT NULL, "+
                    " `user_content` text DEFAULT NULL, "+
                    " `admin_content` text DEFAULT NULL, "+
                    " `act_flag` int(1) DEFAULT NULL, "+
                    " `created_at` datetime NOT NULL, "+
                    " `updated_at` datetime NOT NULL, "+
                    " PRIMARY KEY (`id`) "+
                    " ) ENGINE=InnoDB DEFAULT CHARSET=utf8; "

            @connection = ActiveRecord::Base.connection
            @esult = @connection.exec_query(_sql)
            redirect_to action: "index"
            # format.html {
              # redirect_to @activity
              # , notice: 'Activity was successfully created.' }
            # format.json { render :show, status: :created, location: @activity }
        end


        # redirect_back(fallback_location: "activities")

      else
      # else
        render :new
        # format.json { render json: @product.errors, status: :unprocessable_entity }
      # end
      #   redirect_to action: "index"
        # format.html { render :new }
        # format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    # end
  end

  def add_a_column
      render "add_a_column"
  end


  def activities_success

    activ=Activity.find(params[:activity_id])


    sql = "update `other_#{activ.other_table_name}` set `admin_content` = '核准報名', `act_flag` = '1' where `id` = '#{params[:id]}' "
    connection = ActiveRecord::Base.connection
    connection.exec_query(sql)

    redirect_to controller: 'activities', action: 'activities_detial', id: params[:activity_id]
  end

  def activities_fail

    activ=Activity.find(params[:activity_id])


    sql = "update `other_#{activ.other_table_name}` set `admin_content` = '取消報名', `act_flag` = '0' where `id` = '#{params[:id]}' "
    connection = ActiveRecord::Base.connection
    connection.exec_query(sql)
    redirect_to controller: 'activities', action: 'activities_detial', id: params[:activity_id]

  end


  def activities_detial
    #找到相關的TABLE

    @activ=Activity.find(params[:id])
    @activ.other_table_name
    sql = "select * from `other_#{@activ.other_table_name}`"
    # @records_array = ActiveRecord::Base.connection.execute(sql)

    @connection = ActiveRecord::Base.connection
    @esult = @connection.exec_query(sql)

    @title = ["活動報名","#{@activ.title}-活動報名報名人員列表"]
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json

  #刪除資料庫
  def del_activities

    @activity = Activity.find(params[:id])
    sql = "drop table `other_#{@activity.other_table_name}` "
    connection = ActiveRecord::Base.connection
    connection.exec_query(sql)
    @activity.destroy

    redirect_to controller: 'activities', action: 'index', notice: "刪除成功！！！"
  end

  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  # 建立多欄位&資料庫
  def store_TableRef
      activity_fields = ""
      sql_fields = ""
      field_count = 0

      request.request_parameters[:field].each do |name , val |
        #將欄位存成JSON到MYSQL
        if request.request_parameters[:field].count.to_i == 1

              activity_fields += '"'+"#{name}"+'":"'+ "#{val}"+'"'

        else

            if field_count == 0
              activity_fields += '"'+"#{name}"+'":"'+ "#{val}"+'"'
            else
              activity_fields += ', "'+"#{name}"+'":"'+ "#{val}"+'"'
            end

        end

        sql_fields += " `#{name}` varchar(255) DEFAULT NULL, "
        field_count += 1
      end



      activity_fields = "{#{activity_fields}}"

      # render :text=>"#{fields} <br>#{request.request_parameters}"

      activity_id = request.request_parameters[:activity_id]
      acti = Activity.find(activity_id)
      acti.column_detail = activity_fields
      acti.save

      _sql = "CREATE TABLE `other_#{request.request_parameters[:table_name]}` ( " +
              " `id` int(11) NOT NULL AUTO_INCREMENT, " +
              " #{sql_fields} " +
              " `name` varchar(255) DEFAULT NULL, "+
              " `sex` varchar(255) DEFAULT NULL, "+
              " `phone` varchar(255) DEFAULT NULL, "+
              " `birthday` date DEFAULT NULL, "+
              " `address` varchar(255) DEFAULT NULL, "+
              " `email` varchar(255) DEFAULT NULL, "+
              " `user_content` text DEFAULT NULL, "+
              " `admin_content` text DEFAULT NULL, "+
              " `act_flag` int(1) DEFAULT NULL, "+
              " `created_at` datetime NOT NULL, "+
              " `updated_at` datetime NOT NULL, "+
              " PRIMARY KEY (`id`) "+
              " ) ENGINE=InnoDB DEFAULT CHARSET=utf8; "

      @connection = ActiveRecord::Base.connection
      @esult = @connection.exec_query(_sql)
      redirect_to action: "index"
      # @trf = TableRef.new()
      # @trf.activite_id = @activity.id
      # @trf.table_name = "ta"
      # @trf.column_name = "cn"
      # @trf.name = "name"
      # @trf.save

  end

  private

    def sort_column
      Activity.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end








    def set_title

      @active = "activities"
      @title = ["",""]
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:date, :time, :title,:title_en, :content , :content_en, :limit_user, :other_table_name , :column_num)
    end
end
