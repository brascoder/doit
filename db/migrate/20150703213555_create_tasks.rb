class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :user_id
      t.text :content_html

      t.timestamps null: false
    end
  end
end
