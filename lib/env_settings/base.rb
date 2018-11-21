module EnvSettings

	class HashTree
		attr_accessor :data
		def initialize options ={}
			@data = options
			@data.each do |k, v|
				if v.class == Hash && v.keys.length > 0
					@data[k] = HashTree.new(v)
				end
			end
		end

		def method_missing(method, *args, &block)
			return @data[method] if @data[method]
			string_key = method.to_s
			return @data[string_key] if @data[string_key]
			return @data[string_key.to_i] if @data[string_key.to_i]
			raise "config data not contain key: #{method}"
		end

		def [](key_name)
			@data[key_name]
		end

		def inspect
			@data
		end

		def to_s
			@data.to_s
		end
	end

	def self.load filepath = ''
		if File.exists?(filepath)
			HashTree.new(YAML.load_file(filepath))
		else
			raise "File #{filepath} not exists"
		end
	end

end