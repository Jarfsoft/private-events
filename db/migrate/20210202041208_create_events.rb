class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :location

      t.timestamps
    end
    add_reference :events, :creator_id, :integer, index: true, foreign_key:true
    # add_index :events, creator_id, :integer, unique: true
  end
end
