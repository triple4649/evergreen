# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require "db"

class Worddictionary  
  def self.first(str)
    result=DB.fetch("select WORD, SHORT_VER,WORD_LEVEL from WORD_DICTIONAY ")
    .where(:search_word =>["#{str}"]) 
    .first
    return "単語{result[:word]} <br>
            単語の意味：#{result[:short_ver]} <br>
            単語レベル：#{result[:word_level]}#"
  end
  
  def self.count(str)
    result=DB.fetch("
      select word,count(*) as kensuu 
      from WORD_DICTIONAY
      where search_word = '#{str}'
      group by word"
    ).first
    return "単語：#{str} 単語件数：#{result[:kensuu]}"
  end
  
  def self.belongs(str)
    DB[:WORD_DICTIONAY]
    .where{search_word.ilike "#{str}%"} 
    .all
    .map{|m| "
        -----------------------------
        単語：#{m[:word]} 
        単語の意味：#{m[:short_ver]} 
        単語レベル：#{m[:word_level]}
        -----------------------------" }
    .reduce{|x,y|x+y}
  end
end  
