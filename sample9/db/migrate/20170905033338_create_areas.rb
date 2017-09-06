class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.date :visitdate
      t.string :location
      t.text :memo
      t.jsonb :areapictureurls
      t.timestamps null: false
    end
  end
end
