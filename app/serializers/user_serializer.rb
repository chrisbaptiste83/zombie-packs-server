class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :tactical_packages
end
