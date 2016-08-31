class User < ActiveRecord::Base
	 validates :first_name, :last_name, :email, :password, :age, presence: true
	 validates :first_name, :last_name, presence: true, length:{ in: 2..20 }
	 validates :age , numericality: { greater_than_or_equal_to: 10, less_than: 150 }

end
