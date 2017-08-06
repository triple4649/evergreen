#render text:"こんにちは！#{WORD_DICTIONARY .new().getworld}さん"
#render text:"こんにちは！#{ WORD_DICTIONARY.new().getworld()}さん"

# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#require_dependency "worddictionary"
#require "db"

class SampleController< ApplicationController
protect_from_forgery :expect  => ["create"]
def sayhello
     @msgToNikkyusan = '２９３、hello!';
     @msgToPerorisan = 'ペロリさん、hello!';
  end
  #初期表示で呼ばれるメソッド
  def sayhelloToNyukkyusan
     @msgToNikkyusan = '２９３、hello!';
  end
    
  #Ajaxから呼ばれるメソッド
  def sayhelloasynpost
    p params
    render text:Worddictionary.belongs(params[:name])
  end
end