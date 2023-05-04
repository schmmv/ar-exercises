class Store < ActiveRecord::Base
  has_many :employees
  validate :carry_mens_or_womens_apparel, on: :create
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  private 

  def carry_mens_or_womens_apparel
    errors.add(:carry_mens_or_womens_apparel, "Store must carry at least one type of apparel") unless mens_apparel || womens_apparel
  end
  
end
