class User < ActiveRecord::Base
  has_secure_password

  enum role: [ :admin, :user ]
end
