class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.text :title
      t.text :body
      t.text :summary
      t.date :date

      t.timestamps
    end
  end
end
