class Author < ActiveRecord::Base
  validates :first_name, :last_name, :age, presence: true
  validates :first_name, length: {in: 4...20}
  validates :last_name, length: {in: 4...20}
  validates :age, numericality: {only_integer: true}
  has_many :posts, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
