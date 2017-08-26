namespace :task_tabearuki do
  desc "task_tabearuki_use_model"
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
end
