module UsersHelper
    def gravatar_url(user, options={size: 80})
        gravatar_id = Digest::MDS::hexgigest(user.email.downcase)
        size = options[:size]
        "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    end
end
