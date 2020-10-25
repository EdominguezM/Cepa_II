class AddStatusToStrain < ActiveRecord::Migration[6.0]
  def change
    add_column :strains, :status, :integer, :default => 0
  end
end
