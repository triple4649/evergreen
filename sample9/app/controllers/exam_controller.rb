# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#require_dependency "worddictionary"
#require "db"

class ExamController< ApplicationController
protect_from_forgery :expect  => ["create"]
    def register
        a = params.to_a
        .group_by do |k,v| 
            str=k[/^.*#/]
            str.present? ?str.tr("#",""):""	
        end
        .to_a.select{|k,v|k.present?}
        .map do|k,v|
            [k,v.group_by {|a,b|a.scan(/#(\d)/)[0]}]
        end
        p a
        render text:""
  end
end

                