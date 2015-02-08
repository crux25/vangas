class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :department, presence: true
  validates :name, presence: true, length: {minimum: 2}
  has_many :posts, dependent: :destroy
end
