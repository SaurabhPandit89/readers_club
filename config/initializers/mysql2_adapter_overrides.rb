class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  def create_table(table_name, options = {})
    super(table_name, options.reverse_merge(:options => "ENGINE=MYISAM"))
  end
end