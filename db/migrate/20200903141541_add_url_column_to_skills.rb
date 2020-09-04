class AddUrlColumnToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :url, :text
  end
end
