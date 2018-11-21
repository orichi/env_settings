require 'spec_helper'

RSpec.describe 'EnvSettings' do 
	context 'should parse config_simple.yml success' do 
		before(:all){
			@conf = EnvSettings.load 'spec/config_normal.yml'
		}

		it 'should return server ports' do
			expect(@conf.server.ports).to eql [8080, 8089]
		end

		it 'should return 8080 protocol' do 
			expect(@conf.send('8080')).to eql 'http'
		end

		it 'should return 8089 protocol' do 
			expect(@conf.send('8089'.to_sym)).to eql 'https'
		end

		it 'should return 80http url' do 
			expect(@conf.send('80http')).to eql 'http://localhost:8080'
		end
	end
end
