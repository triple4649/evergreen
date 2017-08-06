# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require "db"
require "date"

class Exam
    def self.insert(params)
        DB.transaction do
            do_tran(params)
        end
    end
    
    def self.do_tran(params)
        params.each do|e|
            insert_into_exam(e["EXAM"]) if e.has_key?("EXAM")
            insert_into_exam_categori(e["CATEGORI"]) if e.has_key?("CATEGORI")
        end
    end
    
    def self.insert_into_exam(params)
        params.each_with_index do |e,i|
           DB[:EXAM].insert(
            :ID=>e["ID"],:WORD=>e["WORD"], 
            :SENTENCE=>e["SENTENCE"],:WLEVEL=>e["WLEVEL"],
            :SAKUSEIYMD=>Date.today ,:RENBAN=>i)  
        end
    end
    
    def self.insert_into_exam_categori(e)
        DB[:EXAM_CATEGORI].insert(
        :ID=>e["ID"],:CATEGORY_CODE=>e["CATEGORY_CODE"], 
        :SAKUSEIYMD=>Date.today)  
    end
end  
