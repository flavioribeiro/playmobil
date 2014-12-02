class CreateVideoSignals < ActiveRecord::Migration
  def change
    create_table :video_signals do |t|
      t.string :name
      t.string :source

      t.timestamps
    end
  end
end
