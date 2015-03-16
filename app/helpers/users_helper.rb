module UsersHelper

def gravatar_for(user, options = {:size => 50})
		gravatar_image_tag(user.name.titleize, :alt => user.email.downcase,
												   :class => 'gravatar',
												   :gravatar => options )
	end
end
