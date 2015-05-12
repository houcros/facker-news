class Googleuser < ActiveRecord::Base
  belongs_to :user
  acts_as_voter

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |googleuser|
      googleuser.provider = auth.provider
      googleuser.uid = auth.uid
      googleuser.name = auth.info.name
      googleuser.oauth_token = auth.credentials.token
      googleuser.oauth_expires_at = Time.at(auth.credentials.expires_at)

      if User.exists?(uid: auth.uid)
        googleuser.user = User.where("uid = ?", auth.uid).first
      else
        googleuser.user = User.create(name: auth.info.name, karma: 1, uid: auth.uid)
      end

      googleuser.save!
    end
  end
end
