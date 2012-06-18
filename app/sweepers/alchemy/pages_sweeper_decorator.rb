module Alchemy
  PagesSweeper.class_eval do

  private

    def expire_page(page)
      return if page.do_not_sweep
      expire_action(page.cache_key)
      expire_action(page.cache_key(OpenStruct.new({:user_agent => 'iPad'})))
    end

  end
end