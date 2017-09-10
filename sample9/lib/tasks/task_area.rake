namespace :task_area do
  desc "task_area_use_model"
  task :task_model_002 => :environment do
    Area.create(
        :visitdate=>"2011/9/20",
        :location=>"東京都 西荻窪～吉祥寺",
        :memo=>"<p>西荻窪～吉祥寺界隈を散策した時に撮った写真</p>
        <p>個性的な店が多し</p>",
        :areapictureurls=>{url:[
                    '/images/area/20170909/8336606_1311876963_11large.jpg',
                    '/images/area/20170909/8336606_1311876974_35large.jpg',
                    '/images/area/20170909/8336606_1311877111_115large.jpg',
                    '/images/area/20170909/8336606_1311877110_201large.jpg',
                    '/images/area/20170909/8336606_1311877106_173large.jpg',
                    '/images/area/20170909/8336606_1311877105_46large.jpg',
                    '/images/area/20170909/8336606_1311877096_210large.jpg',
                    '/images/area/20170909/8336606_1311877093_138large.jpg',
                    '/images/area/20170909/8336606_1311877084_156large.jpg',
                    '/images/area/20170909/8336606_1311877078_200large.jpg',
                    '/images/area/20170909/8336606_1311877072_10large.jpg',
                    '/images/area/20170909/8336606_1311877055_83large.jpg',
                    '/images/area/20170909/8336606_1311877052_5large.jpg',
                    '/images/area/20170909/8336606_1311877051_236large.jpg',
                    '/images/area/20170909/8336606_1311877047_153large.jpg',
                    '/images/area/20170909/8336606_1311877041_193large.jpg',
                    '/images/area/20170909/8336606_1311877029_217large.jpg',
                    '/images/area/20170909/8336606_1311877025_237large.jpg',
                    '/images/area/20170909/8336606_1311877007_191large.jpg',
                    '/images/area/20170909/8336606_1311877001_2large.jpg',
                    '/images/area/20170909/8336606_1311876989_154large.jpg',
                    '/images/area/20170909/8336606_1311876983_86large.jpg',
                    '/images/area/20170909/8336606_1311876974_35large.jpg',
                    '/images/area/20170909/8336606_1311876963_11large.jpg'
                    ]
              });
  end
  task :task_model_003 => :environment do
    Area.create(
        :visitdate=>"2011/8/08",
        :location=>"横浜市 横浜駅～日吉",
        :memo=>"<p>横浜駅から東横線沿線を歩いて日吉まで歩いた時の写真</p>
        <p>歩いた界隈が古くからある街だと思わせるオブジェが多し</p>",
        :areapictureurls=>{url:[
                     '/images/area/20170909001/8336606_1252665329_235large.jpg',
                     '/images/area/20170909001/8336606_1252665316_106large.jpg',
                     '/images/area/20170909001/8336606_1252665314_147large.jpg',
                     '/images/area/20170909001/8336606_1252665289_81large.jpg',
                     '/images/area/20170909001/8336606_1252665277_48large.jpg',
                     '/images/area/20170909001/8336606_1252665241_33large.jpg',
                     '/images/area/20170909001/8336606_1252665230_44large.jpg',
                     '/images/area/20170909001/8336606_1252665223_173large.jpg '       
                    ]
              });
  end
  task :task_model_004 => :environment do
    Area.create(
        :visitdate=>"2011/7/30",
        :location=>"横浜市 緑園都市～鶴ヶ峰",
        :memo=>"<p>相鉄線沿線の緑園都市～鶴ヶ峰を歩いた時の写真</p>
        <p>緑園都市のおしゃれさはここが相鉄線の駅だということを忘れさす</p>",
        :areapictureurls=>{url:[
                          '/images/area/20170909002/8336606_1239332221_156large.jpg',
                          '/images/area/20170909002/8336606_1239332205_123large.jpg',
                          '/images/area/20170909002/8336606_1239332196_10large.jpg',
                          '/images/area/20170909002/8336606_1239332192_33large.jpg',
                          '/images/area/20170909002/8336606_1239332184_66large.jpg',
                          '/images/area/20170909002/8336606_1239332181_52large.jpg',
                          '/images/area/20170909002/8336606_1239332175_87large.jpg',
                          '/images/area/20170909002/8336606_1239332169_18large.jpg',
                          '/images/area/20170909002/8336606_1239332162_254large.jpg',
                          '/images/area/20170909002/8336606_1239332159_216large.jpg',
                          '/images/area/20170909002/8336606_1239332143_225large.jpg',
                          '/images/area/20170909002/8336606_1239332043_190large.jpg'
                    ]}
    )
    ProgramContent.create(:url=>"/area/show/5",
    :title=>"横浜市 緑園都市～鶴ヶ峰",:record_type=>"area",:c_order=>1.49)
  end
  task :task_model_005 => :environment do
    Area.where(id: 5)
    .update_all(
        :visitdate=>"2011/7/30",
        :location=>"横浜市 緑園都市～鶴ヶ峰",
        :memo=>"<p>相鉄線沿線の緑園都市～鶴ヶ峰を歩いた時の写真</p>
        <p>緑園都市はここは東急沿線の街か？と思わせるほど、おしゃれで個性的な建物が多い</p>",
        :areapictureurls=>{url:[
                          '/images/area/20170909002/8336606_1239332221_156large.jpg',
                          '/images/area/20170909002/8336606_1239332205_123large.jpg',
                          '/images/area/20170909002/8336606_1239332196_10large.jpg',
                          '/images/area/20170909002/8336606_1239332192_33large.jpg',
                          '/images/area/20170909002/8336606_1239332184_66large.jpg',
                          '/images/area/20170909002/8336606_1239332181_52large.jpg',
                          '/images/area/20170909002/8336606_1239332175_87large.jpg',
                          '/images/area/20170909002/8336606_1239332169_18large.jpg',
                          '/images/area/20170909002/8336606_1239332162_254large.jpg',
                          '/images/area/20170909002/8336606_1239332159_216large.jpg',
                          '/images/area/20170909002/8336606_1239332143_225large.jpg',
                          '/images/area/20170909002/8336606_1239332043_190large.jpg'
                    ]}
    )
  end
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
  task :task_model_001 => :environment do
    Area.create(
        :visitdate=>"2008/3/29",
        :location=>"埼玉県 さいたま市 大宮公園",
        :memo=>"<p>たまたま桜が満開の時期に行った。</p>
        <p>桜の花が高いところに咲いていて、とても見ごたえがあった</p>",
        :areapictureurls=>{url:[
                    '/images/area/20170907/CA390053.JPG',
                    '/images/area/20170907/CA390054.JPG',
                    '/images/area/20170907/CA390062.JPG',
                    '/images/area/20170907/CA390066.JPG',
                    '/images/area/20170907/CA390067.JPG',
                    '/images/area/20170907/CA390068.JPG',
                    '/images/area/20170907/CA390070.JPG'
                    ]
              });
  end
end
