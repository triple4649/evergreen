# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'
class RegisterdiaryController< ApplicationController
    before_action :checkuser
    
    def show
    end
    def comfirm
        render html: Kramdown::Document.new(params[:diary]).to_html.html_safe
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