class CreatePreformers < ActiveRecord::Migration[6.0]
  def change
    create_table :preformers do |t|
      t.string :name
      t.string :label
      t.belongs_to :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
