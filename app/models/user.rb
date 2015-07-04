class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, maximum_attempts: 5

  has_many :letters
  has_many :addresses

  def display_name
    return email unless name.present?
    name.split[0]
  end

end
