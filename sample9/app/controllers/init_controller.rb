# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'

class InitController< ApplicationController
protect_from_forgery :expect  => ["create"]
    def index
         @diray_content=Kramdown::Document
         .new(Diary.last.contents)
         .to_html.html_safe
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
        @presentpage=size
    end
end