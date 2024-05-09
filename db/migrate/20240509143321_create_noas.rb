class CreateNoas < ActiveRecord::Migration[6.1]
  def change
    create_table :noas do |t|
      t.string :animal
      t.string :kinds

      t.timestamps
    end
  end
end
