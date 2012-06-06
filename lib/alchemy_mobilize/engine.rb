require 'mobylette'

module AlchemyMobilize
  class Engine < Rails::Engine

    engine_name 'alchemy_mobilize'

    initializer "alchemy_mobilize.include_mobylette" do
      Alchemy::PagesController.send(:include, Mobylette::RespondToMobileRequests)
    end

    config.to_prepare do
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator.rb")) do |e|
        Rails.env.production? ? require(e) : load(e)
      end
    end

  end
end
