class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      # foreign_keyはboardテーブルをつなぐ外部キー制約
      t.references :board, foreign_key: true
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
