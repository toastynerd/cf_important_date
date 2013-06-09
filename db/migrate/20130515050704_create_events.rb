class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event
      t.string :details
      t.datetime :date

      t.timestamps
    end
  end
end
