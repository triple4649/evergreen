# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'
class DiarymodifyController< ApplicationController
    before_action :checkuser
    def show
        @diaries = Diary.all.order("id DESC")
    end
    
    def comfirm
        key=params[:id].to_i
    
        puts Diary.find(key).contents
        render text: Diary.find(key).contents
    end
    
    def update
        key=params[:id].to_i
        view_contents = params[:modfiy]
        #puts "key : #{key}"
        #puts "view_contents : #{params[:modfiy]}"
    
        Diary.update(key,:contents=>view_contents)
        render html: '更新が完了しました'
    end
    
    def register
        Diary.new(contents:params[:diary])
        .save
        render html: Kramdown::Document.new(params[:diary]).to_html.html_safe
    end
    
    private 
    def checkuser
        if params[:rgs] != 'puisanpuisan1997'
            render html: 'こんにちは！'
        end
    end
end