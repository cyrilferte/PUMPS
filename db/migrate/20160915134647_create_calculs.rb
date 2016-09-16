class CreateCalculs < ActiveRecord::Migration[5.0]
  def change
    create_table :calculs do |t|
      t.float :para1
      t.float :para2
      t.float :para3
      t.float :para4
      t.float :para5
      t.boolean :parab1
      t.boolean :parab2
      t.integer :parai1
      t.integer :parai2
      t.string :mail
      t.string :techno
      t.string :model

      t.timestamps
    end
  end
end
