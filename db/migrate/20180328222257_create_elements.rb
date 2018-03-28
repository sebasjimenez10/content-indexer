class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements, id: :uuid do |t|
      t.string :tag
      t.text :content
      t.references :site, index: true

      t.timestamps
    end
  end
end
