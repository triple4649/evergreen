# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require "sequel"

##DB = Sequel.connect('jdbc:oracle:thin:triple/triple@//localhost:1521/triple_pb.co.jp')

##テーブル情報を表示する
##def fetchUserTables 
##  DB.fetch("select table_name from user_tables ")
##  .all do
##    |x|puts x 
##  end
##end