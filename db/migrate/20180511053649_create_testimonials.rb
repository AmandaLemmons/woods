class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :position
      t.string :company
      t.string :client_since
      t.text :description

      t.timestamps
    end
  end
end
