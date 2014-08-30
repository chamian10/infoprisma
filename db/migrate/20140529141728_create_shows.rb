class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.text :title
      t.text :body
      t.text :summary
      t.date :date

      t.timestamps
    end
  end
end
