class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :department, presence: true
  validates :name, presence: true, length: {minimum: 2}
  validates :level, presence: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
