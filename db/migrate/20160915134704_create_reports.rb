class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :calcul, foreign_key: true

      t.timestamps
    end
  end
end
