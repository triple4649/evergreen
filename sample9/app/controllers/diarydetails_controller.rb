# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'

class DiarydetailsController< ApplicationController
protect_from_forgery :expect  => ["create"]
    def show
        getData
    end
    
    def showlist
        getData
    end
    
    def showdetails
        render html:Kramdown::Document
         .new(Diary.find(params[:id].to_i).contents)
         .to_html.html_safe
    end
    
    private
    def getData
        size = params[:_beforepaging].to_i
    
        model=Diary.all
        .order("id DESC")
        
        @ProgrameContents=model
        .to_a()
        .slice(size..(size+10))
        
        @lang_=params[:lang]
        @isbefore=(size>0)
        @isnext=@ProgrameContents.length>10
        @presentpage=size
    end
end