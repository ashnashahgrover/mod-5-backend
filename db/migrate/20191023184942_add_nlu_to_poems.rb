class AddNluToPoems < ActiveRecord::Migration[6.0]
  def change
    add_column :poems, :nlu, :string
  end
end
