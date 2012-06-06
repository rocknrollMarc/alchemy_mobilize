module Alchemy
  Page.class_eval do

    scope :published, where(:public => true, :show_on_mobile => true)
    scope :visible, where(:visible => true, :show_on_mobile => true)

    def self.cache_path(params, request = nil)
      mobile_request = request.user_agent.to_s.downcase =~ /#{Mobylette::MOBILE_USER_AGENTS}/
      "alchemy/#{mobile_request ? 'mobile' : nil}/#{params[:lang]}/#{params[:urlname]}".gsub(/\/\//, '/')
    end

    def visible?
      read_attribute(:visible) && show_on_mobile?
    end

    def public?
      read_attribute(:public) && show_on_mobile?
    end

  end
end
