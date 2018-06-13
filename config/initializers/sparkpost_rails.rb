SparkPostRails.configure do |c|
  c.api_key = ENV.fetch('SPARKPOST_API_KEY')
end
