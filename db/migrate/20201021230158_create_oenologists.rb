class CreateOenologists < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.string :age
      t.string :nationality

      t.timestamps
    end
  end
end
