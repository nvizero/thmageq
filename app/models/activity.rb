class Activity < ApplicationRecord


  # def self.to_csv(options = {})
  #   desired_columns = ["id", "title","date","time"]
  #    CSV.generate(options) do |csv|
  #        csv << desired_columns
  #        all.each do |product|
  #          csv << product.attributes.values_at(*desired_columns)
  #        end
  #    end
  # end
  # validates_format_of :date, :with => /\d{4}\-\d{2}\-\d{2}/, :message => "西元年-月-日"
  # validates :date,  :presence => { :message => "日期-不能空白" } ,
  #                    :uniqueness => { :message => "日期-必填" }
  # validates :time,  :presence => { :message => "時間-不能空白" } ,
  #                   :uniqueness => { :message => "時間-必填" }
  # validates :title,  :presence => { :message => "活動標題-不能空白" } ,
  #                    :uniqueness => { :message => "活動標題-必填" }
  # validates :content,  :presence => { :message => "活動內容-不能空白" } ,
  #                   :uniqueness => { :message => "活動內容-必填" }
  # validates :limit_user,  :presence => { :message => "人數上限-不能空白" } ,
  #                   :uniqueness => { :message => "人數上限-必填" }

  # devise 	 :omniauthable


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

end
