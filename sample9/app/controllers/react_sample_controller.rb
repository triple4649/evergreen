# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'kramdown'
class ReactSampleController< ApplicationController
    def show
        @tabearukiInfo = Tabearuki.take.to_json.html_safe
    end
end