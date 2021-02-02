class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :location

      t.timestamps
    end
    add_column :events, :creator_id, :integer, index: true, foreign_key:true 
  end
end
