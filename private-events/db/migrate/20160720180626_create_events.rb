class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :description
      t.text :location
      t.datetime :time

      t.timestamps
    end
  end
end
