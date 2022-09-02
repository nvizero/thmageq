module ActivitiesHelper

  def join_other_table_ok table_name


     sql = "show tables like 'other_#{table_name}'; "

     # @records_array = ActiveRecord::Base.connection.execute(sql)

     connection = ActiveRecord::Base.connection
     return esult = connection.exec_query(sql)
  end

  def query_talbe table_name


     e_sql = "select count(*) from `other_#{table_name}` ; "

     # @records_array = ActiveRecord::Base.connection.execute(sql)

     connection = ActiveRecord::Base.connection
     return esult = connection.exec_query(e_sql)
  end

end
