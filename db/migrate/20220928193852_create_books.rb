class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :rentedTo

    #  t.references :member, null: false, forieng_key: true
      t.timestamps
    end
  end
end
