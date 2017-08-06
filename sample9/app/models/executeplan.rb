# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require "db"

class Executeplan
  def self.belongs(str)
    DB.fetch("select LAST_ACTIVE_TIME,SQL_TEXT from V$SQL 
      where sql_text like '%#{str}%'
      order by last_active_time desc") 
    .all
    .map{|m| "
        -----------------------------
        最後に実行された時間：#{m[:last_active_time]} 
        SQL_本文：#{m[:sql_text]} 
        -----------------------------" }
    .reduce{|x,y|x+y}
  end
  
end  
