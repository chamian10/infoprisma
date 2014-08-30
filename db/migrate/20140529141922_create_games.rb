class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :level
      t.date :date
      t.string :id_news
      t.string :id_sport
      t.string :id_show

      t.timestamps
    end
  end
end
