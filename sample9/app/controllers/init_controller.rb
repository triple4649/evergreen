# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#require_dependency "worddictionary"
#require "db"

class InitController< ApplicationController
protect_from_forgery :expect  => ["create"]
    def index
    end

    def showprograming
        size = params[:_beforepaging].to_i
    
        model=ProgramContent
        .where(record_type:params[:lang])
        .order("c_order DESC")
        
        @ProgrameContents=model
        .to_a()
        .slice(size..(size+5))
        
        @lang_=params[:lang]
        @isbefore=(size>0)
        @isnext=@ProgrameContents.length>5
        
        puts "要素数 #{@ProgrameContents.length}"
        @ProgrameContents.each {|x| puts x}
        @presentpage=size
    end
end