class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :filename

      t.timestamps
    end
  end
end
