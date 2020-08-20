class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :tactical_package_id, :user_id, :content
end
