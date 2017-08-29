# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'
class ReactSampleController< ApplicationController
    def show
        @tabearukiInfo = getData
    end

    def tabearukis
        @tabearukiInfo = getData
    end
    
    private 
    def getData
        size = params[:_beforepaging].to_i
        model=Tabearuki.all.order(visitdate: :desc)
        .to_a().slice(size..(size+5))
        
        json = {:contents=>model.slice(0,5),
         :isbefore=>(size>0),
         :isnext=>model.length>5,
         :presentpage=>size}.to_json
       
    end
    
end