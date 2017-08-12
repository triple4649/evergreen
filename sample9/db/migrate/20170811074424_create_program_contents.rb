class CreateProgramContents < ActiveRecord::Migration
  def change
    create_table :program_contents do |t|
      t.text :url
      t.string :cotent
      t.string :record_type
      t.string :title
      t.decimal:c_order , precision: 6, scale: 3 

      t.timestamps null: false
    end
  end
end
