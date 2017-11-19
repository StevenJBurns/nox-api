class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.references :service, foreign_key: true
      t.string :client_name
      t.text :body_text
      t.string :image_url

      t.timestamps
    end
  end
end
