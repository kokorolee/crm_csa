class AddFieldActiveToDomains < ActiveRecord::Migration[5.1]
  def change
    add_column :domains, :active, :boolean
  end
end
