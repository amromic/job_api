class AddDescriptionToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :description, :text
    add_column :jobs, :created_at, :datetime
    add_column :jobs, :updated_at, :datetime
  end
end
