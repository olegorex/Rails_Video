class Item < ApplicationRecord
<<<<<<< HEAD


  validates :price,  numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  belongs_to :category

  after_initialize {} # Item.new; Item.first
  after_save {} # Item.save; Item.create item.update_attributes()
  after_create { category.inc(:items_count, 1) }
  after_update {}
  after_destroy { category.inc(:items_count, -1) } # item.destroy

=======
  attr_accessible :price, :name, :real, :weight, :description
>>>>>>> d0b8424dd50ddf0e1f8e116bb1ddcb47ca5f2ced
end
