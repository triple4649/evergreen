namespace :task_dairy do
  desc "task_diary_use_model"
  task :task_model_007 => :environment do
    ProgramContent.create(
    :url=>"https://qiita.com/triple4649/items/af44ee9eb0ca2cd470fb",
    :title=>"javaのpublicメソッドを抽出してみる",
    :record_type=>"java",:c_order=>3.42)
    ProgramContent.create(
    :url=>"https://qiita.com/triple4649/items/7bbeb950545d25334355",
    :title=>"Java:ディレクトリを渡り歩く",
    :record_type=>"java",:c_order=>3.43)
    ProgramContent.create(
    :url=>"https://qiita.com/triple4649/items/53c22fa9db011bff44c9",
    :title=>"EclipseLinkをつかってDBプログラミングをする part1",
    :record_type=>"java",:c_order=>3.43)
    ProgramContent.create(
    :url=>"https://qiita.com/triple4649/items/722553d222b2c4f8a168",
    :title=>"phpでスクライピングをやってみたが・・・・",
    :record_type=>"PHP",:c_order=>1.110)
    ProgramContent.create(
    :url=>"https://qiita.com/triple4649",
    :title=>"phpでスクライピングをやってみた part2",
    :record_type=>"PHP",:c_order=>1.111)
  end
  
  task :task_model_006 => :environment do
    ProgramContent.create(
    :url=>"http://qiita.com/triple4649/private/76df566abb6314eca666",
    :title=>"情報処理　安全確保支援士 キーワードチェーン 2",
    :record_type=>"SC",:c_order=>1.06)
    ProgramContent.create(
    :url=>"http://qiita.com/triple4649/private/b53fe3f3576ce7de2779	",
    :title=>"情報処理　安全確保支援士 キーワードチェーン 3",
    :record_type=>"SC",:c_order=>1.07)
  end

  task :task_model_005 => :environment do
    ProgramContent.create(
    :url=>"http://qiita.com/triple4649/private/76967469f8146ed3b1d9",
    :title=>"情報処理　安全確保支援士 キーワードチェーン 1",
    :record_type=>"SC",:c_order=>1.05)
  end
  
  
  task :task_model => :environment do
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/c1c9880512c7d732070d6a999c8ea210",
    :title=>"横浜 磯子区 岡村天満宮",:record_type=>"area",:c_order=>1.01)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/75bd3f81dfa9e727637cdc71ce0a6f2a",
    :title=>"横浜 磯子区 三殿台遺跡",:record_type=>"area",:c_order=>1.02)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/f58b078ef77f8351d231b81b7f4baba2",
    :title=>"横浜 磯子区 三殿台遺跡2",:record_type=>"area",:c_order=>1.04)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/f61a260ab30f299a8c0e84d581615aa0",
    :title=>"横浜 磯子区 三殿台遺跡3",:record_type=>"area",:c_order=>1.05)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/06491595b1961b738367df08e2aa01ef",
    :title=>"横浜 磯子区 三殿台遺跡4",:record_type=>"area",:c_order=>1.06)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/c4c0d8f946b88ca4762bf57c62511cad",
    :title=>"横浜 磯子区 岡村天満宮2",:record_type=>"area",:c_order=>1.07)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/667c846b9d9f9799ebede7ceeb8d625d",
    :title=>"横浜 磯子区 岡村梅林",:record_type=>"area",:c_order=>1.08)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/1b0e24900b972c09c18f4f80fa6d5c17",
    :title=>"横浜 磯子区 磯子の臨海工業地帯",:record_type=>"area",:c_order=>1.09)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/bdc9cee6bb3063de920dd9af7d6280d9",
    :title=>"横浜 磯子区 峯市民の森",:record_type=>"area",:c_order=>1.11)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/4eba364f033f09ff743384bbefb4fbe8",
    :title=>"横浜 磯子区 護念寺",:record_type=>"area",:c_order=>1.12)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/9d1b8d302b39ec9d03d83bdb8c5f601c",
    :title=>"横浜 磯子区 氷取沢農業専用地域",:record_type=>"area",:c_order=>1.13)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/6acd9ea9a14b797939365828cee28f84",
    :title=>"横浜 磯子区 氷取沢市民の森",:record_type=>"area",:c_order=>1.14)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/5c869aa8bedb5bdf47c238bac62e95ae",
    :title=>"横浜 磯子区 氷取沢市民の森2",:record_type=>"area",:c_order=>1.15)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/e1947f876352289f60564019bbec6411",
    :title=>"沖縄 那覇市 古波蔵 軽便鉄道",:record_type=>"area",:c_order=>1.16)
    ProgramContent.create(:url=>"http://blog.goo.ne.jp/evergreen_1978/e/ecdc74160301da16d9989cf5efd9d9de",
    :title=>"沖縄 那覇市 国場 真玉橋",:record_type=>"area",:c_order=>1.17)
  end
  task :task_model_001 => :environment do
    ProgramContent.create(:url=>"/area/show/1",
    :title=>"沖縄 南城市 新原ビーチ",:record_type=>"area",:c_order=>2.00)
  end
  task :task_model_002 => :environment do
    ProgramContent.create(:url=>"/area/show/2",
    :title=>"埼玉県 さいたま市 大宮公園",:record_type=>"area",:c_order=>1.40)
  end
  task :task_model_003 => :environment do
    ProgramContent.create(:url=>"/area/show/3",
    :title=>"東京都 西荻窪～吉祥寺",:record_type=>"area",:c_order=>1.50)
  end
  task :task_model_004 => :environment do
    ProgramContent.create(:url=>"/area/show/4",
    :title=>"横浜市 横浜駅～日吉",:record_type=>"area",:c_order=>1.49)
  end
  
end
