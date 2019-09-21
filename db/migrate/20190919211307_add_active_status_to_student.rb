class AddActiveStatusToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active_status, :boolean, :default => false 
  end
end
