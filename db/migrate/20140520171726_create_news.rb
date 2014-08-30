class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :title
      t.text :body
      t.text :summary

      t.timestamps
    end
  end
end
