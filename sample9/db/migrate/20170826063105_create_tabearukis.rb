class CreateTabearukis < ActiveRecord::Migration
  def change
    create_table :tabearukis do |t|
      t.date :visitdate
      t.string :storename
      t.string :location
      t.jsonb :imgurl
      
      t.timestamps null: false
    end
  end
end
