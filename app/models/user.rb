class User < ActiveRecord::Base
	attr_accessor :password, :updating_password
	attr_accessible :name, :email, :password, :password_confirmation

	has_many :posts, :dependent => :destroy

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name,	:presence => true,
										:length => { :maximum => 50 }
	validates :email, :presence => true,
										:format		=> { :with => email_regex },
										:uniqueness => { :case_sensitive => false }
	validates :password,	:presence => true,
												:confirmation => true,
												:length => { :within => 6..40 },
												:if => :should_validate_password?

	before_save :encrypt_password

	def has_password?(submitted_password)
		self.encrypted_password == encrypt(submitted_password)
	end

	def self.authenticate(email, submitted_password)
		user = find_by_email(email)
		return nil if user.nil?
		return user if user.has_password?(submitted_password)
	end

	def self.authenticate_with_salt(id, cookie_salt)
		user = find_by_id(id)
		return nil if user.nil?
		return user if user.salt == cookie_salt
	end



	private

	def encrypt_password
		if new_record?
			self.salt = make_salt
			self.encrypted_password = encrypt(self.password)
		end
	end

	def encrypt(string)
		secure_hash("#{salt}--#{string}")
	end

	def make_salt
		secure_hash("#{Time.now.utc}--#{password}")
	end

	def secure_hash(string)
		Digest::SHA2.hexdigest(string)
	end
	
	def should_validate_password?
		updating_password || new_record?
	end
	
end
