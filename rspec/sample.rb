require 'bundler'
Bundler.require
require 'active_support/logger'

class Sample
	attr_reader :log

	def initialize
		@log = init_logger
	end

	def init_logger
		log      = ActiveSupport::Logger.new(STDOUT)
		log_file = ActiveSupport::Logger.new('./logfile')
		log.formatter = ::Logger::Formatter.new
		log_file.formatter = ::Logger::Formatter.new
		log.extend ActiveSupport::Logger.broadcast(log_file)	
		log
	end

	def greeting
		'hello, world!!'
	end
end


if __FILE__ == $0
	obj = Sample.new
	obj.log.info "ログ出力"
	obj.greeting
end
