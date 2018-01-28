#!/usr/bin/ruby
require 'test/unit'

class Sample
	def self.greeting
		'Hello, World!'
	end

		def self.sum
		2 + 3
	end
end

class TestSample < Test::Unit::TestCase
	def test_greeting
		assert_equal 'Hello, World!', Sample.greeting
	end

	def test_greeting2
		assert_equal 5, Sample.sum
	end
end