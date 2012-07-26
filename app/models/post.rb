class Post < ActiveRecord::Base
  attr_accessible :link, :title, :user_id
end
