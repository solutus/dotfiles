require "rubygems"
require "awesome_print"
# require 'irb/completition'

require 'irb/ext/save-history'
#History configuration
IRB.conf[:SAVE_HISTORY] = 10000
# IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
#unless IRB.version.include?('DietRB')
#  IRB::Irb.class_eval do
#    def output_value
#      ap @context.last_value
#    end
#  end
#else # MacRuby
#  IRB.formatter = Class.new(IRB::Formatter) do
#    def inspect_object(object)
#      object.ai
#    end
#  end.new
#end
