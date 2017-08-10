#render text:"こんにちは！#{WORD_DICTIONARY .new().getworld}さん"
#render text:"こんにちは！#{ WORD_DICTIONARY.new().getworld()}さん"

# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#require_dependency "worddictionary"
#require "db"

class InitController< ApplicationController
protect_from_forgery :expect  => ["create"]
    def index
    end
end