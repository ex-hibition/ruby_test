require 'spec_helper'

describe Sample do 
	describe '#greeting' do
		subject { Sample.new.greeting }
		it { is_expected.to eq 'hello, world!!' }
	end
end