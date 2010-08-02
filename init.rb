require 'jqrating'
ActionView::Base.send(:include, Jqrating::RatingHelper)
ActiveRecord::Base.send(:include, Jqrating::ActiveRecord)
