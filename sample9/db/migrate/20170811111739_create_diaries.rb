class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.text :contents

      t.timestamps null: false
    end
  end
end
