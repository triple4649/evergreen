# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'
class AreaController< ApplicationController
    def show
        @areaInfo = getData
    end
    
    private 
    def getData
        [Area.find(params[:areaindex].to_i)]
        .to_json
    end
    
end