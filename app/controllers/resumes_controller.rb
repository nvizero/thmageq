class ResumesController < ApplicationController
   before_action :set_title
   before_action :authenticate_user! , only: [:index]

   helper_method :sort_column, :sort_direction

   layout "bootstrap"

   def index
      @resumes = Resume.all
   end

   def new
      @title = ["檔案下載","新增"]
      @resume = Resume.new
   end

   def create
      @resume = Resume.new(resume_params)

      if @resume.save
         redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
      else
         render "new"
      end

   end

   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy

      redirect_to resumes_path, notice:  "#{@resume.name} 己刪除"
   end

   def download
    #依id取得attachment資訊
    @attachment = Resume.find(params[:id])

    #透過send_file方法傳回此檔案，
    #透過:filename參數的設定，
    #將檔名變更回原始的檔名回傳。

    send_file ("#{Rails.root}/public#{@attachment.attachment}")

   end

   private

       def set_title
         @cates = Cate.all
         @active = "resumes"
         @title = ["檔案下載","列表"]
       end

       def resume_params
          params.require(:resume).permit(:name, :attachment)
       end


end
