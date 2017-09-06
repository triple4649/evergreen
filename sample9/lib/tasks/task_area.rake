namespace :task_area do
  desc "task_area_use_model"
  task :task_model => :environment do
    Area.create(
        :visitdate=>"2017/9/4",
        :location=>"沖縄県　南城市　新原ビーチ",
        :memo=>"<p>沖縄県南部の南城市に広がる遠浅のビーチ</p><p>那覇からバス(沖縄バス 39番 百名線)で1時間程度で行けるので、意外と手軽に沖縄の海が満喫できるスポットでもある</p>",
        :areapictureurls=>{url:[
                    '/images/area/20170904/1dad10d06faa3035-photo.jpeg',
                    '/images/area/20170904/06b4becf178d459f-photo.jpeg',
                    '/images/area/20170904/92b55ab826e9a173-photo.jpeg',
                    '/images/area/20170904/aac51c4be9f6fef8-photo.jpeg',
                    '/images/area/20170904/b35d1767cfff233f-photo.jpeg',
                    '/images/area/20170904/e78db6f2d9fde93e-photo.jpeg',
                    '/images/area/20170904/ea3aae44e95c43cb-photo.jpeg'
                    ]
              });
  end
  
end
