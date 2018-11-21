require 'spec_helper'

RSpec.describe 'EnvSettings' do 
	context 'should parse config_simple.yml success' do 
		before(:all){
			@conf = EnvSettings.load 'spec/config_simple.yml'
		}

		it 'should return secret' do
			expect(@conf.secret).to eql '356a192b7913b04c54574d18c28d46e6395428ab'
		end

		it 'should return default adapter' do 
			expect(@conf.default.adapter).to eql 'mysql2'
		end

		it 'should return development adapter' do 
			expect(@conf.development.adapter).to eql 'mysql2'
		end
	end
end
