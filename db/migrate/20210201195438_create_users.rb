class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
    add_column :events, :creator_id, :integer, index: true, foreign_key:true 
  end
end
