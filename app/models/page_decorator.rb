module Alchemy
  Page.class_eval do

    def cache_key(request = nil)
      if request
        mobile_request = request.user_agent.to_s.downcase =~ /#{Mobylette::MOBILE_USER_AGENTS}/
      end
      "alchemy/#{mobile_request ? 'mobile' : nil}/#{language_code}/#{urlname}".gsub(/\/\//, '/')
    end

  end
end
