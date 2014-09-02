class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
			user.name = auth["info"]["display_name"]
			user.picURL = auth["extra"]["raw_info"]["user"]["avatar150"]
    end
  end
end