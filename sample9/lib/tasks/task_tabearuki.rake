namespace :task_tabearuki do
  desc "task_tabearuki_use_model"
  task :task_model_004 => :environment do
    Tabearuki.create(
    :visitdate=>"2017/9/05",
    :storename=>"実家",
    :location=>"沖縄県 那覇市",
    :imgurl=>{url:[
                    '/images/tabearuki/001/3f02bd228a4f9b07-photo.jpeg',
                    '/images/tabearuki/001/ddaba05200020969-photo.jpeg',
                    '/images/tabearuki/001/e2ba6a13e6be64eb-photo.jpeg'
                  ]
              });
    Tabearuki.create(
    :visitdate=>"2017/9/03",
    :storename=>"ハート＆ベリー",
    :location=>"沖縄県 那覇市 牧志 公設市場",
    :imgurl=>{url:[
                    '/images/tabearuki/002/076782a4f31e5fa0-photo.jpeg',
                    '/images/tabearuki/002/04be9da45a7de157-photo.jpeg'
                  ]
              });
    
  end
  
  task :task_model => :environment do
    Tabearuki.create(
    :visitdate=>"2017/6/16",
    :storename=>"サンシャインシティ アルパ",
    :location=>"池袋",
    :imgurl=>{url:['/images/20170826/IMG_1489.JPG',
                    '/images/20170826/IMG_1490.JPG',
                    '/images/20170826/IMG_1492.JPG']
              });
  end
  task :task_model_find => :environment do
    row = Tabearuki.take;
    puts row.to_json
  end
  
  task :task_model_001 => :environment do
    Tabearuki.create(
    :visitdate=>"2017/8/20",
    :storename=>"オムライスのひまわり",
    :location=>"綱島",
    :imgurl=>{url:['/images/20170827/001/IMG_1500.JPG',
                    '/images/20170827/001/IMG_1511.JPG']
              });
  end
  task :task_model_002 => :environment do
    Tabearuki.create(
    :visitdate=>"2014/2/24",
    :storename=>"自由亭",
    :location=>"綱島",
    :imgurl=>{url:['/images/20170827/001/IMG_0083.JPG']
              });
  end

  task :task_model_003 => :environment do
    Tabearuki.create(
    :visitdate=>"2014/2/23",
    :storename=>"エレーナ",
    :location=>"横浜 山手",
    :imgurl=>{url:['/images/20170829/IMG_0115.JPG']});
    Tabearuki.create(
    :visitdate=>"2014/5/4",
    :storename=>"-",
    :location=>"湘南 江の島",
    :imgurl=>{url:['/images/20170829/IMG_0220.JPG','/images/20170829/IMG_0221.JPG']});
    
    Tabearuki.create(
    :visitdate=>"2014/5/6",
    :storename=>"リオ",
    :location=>"横浜 横浜駅",
    :imgurl=>{url:['/images/20170829/IMG_0222.JPG']});
    
    Tabearuki.create(
    :visitdate=>"2014/6/16",:storename=>"-",:location=>"横浜 モアーズ",
    :imgurl=>{url:['/images/20170829/IMG_0277.JPG','/images/20170829/IMG_0278.JPG']});
    Tabearuki.create(
    :visitdate=>"2015/3/15",:storename=>"-",:location=>"武蔵小杉",
    :imgurl=>{url:['/images/20170829/IMG_0720.JPG','/images/20170829/IMG_0725.JPG']});
  end
  
end
