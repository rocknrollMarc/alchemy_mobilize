module Alchemy
  Element.class_eval do

    scope :published, where(:public => true, :show_on_mobile => true)

    def public?
      read_attribute(:public) && show_on_mobile?
    end

  end
end
