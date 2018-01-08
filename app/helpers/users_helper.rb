module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })  #(user, size: 93) son lo mesmo pero este tiene tam estatico
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size] #si uso es otro tengo que sacar esto
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end