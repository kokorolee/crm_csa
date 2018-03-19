class AddReferenceToCategoriesInDomains < ActiveRecord::Migration[5.1]
  def change
    add_reference :domains, :category, index: true
  end
end
