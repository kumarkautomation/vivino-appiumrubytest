def logs
  now = (Time.now.to_f * 1000).to_i
  $logger = Logger.new(STDOUT)
  $logger.datetime_format = '%Y-%m-%d %H:%M:%S'

  $logger = Logger.new(File.new("logs/test_#{now}.log", 'w'))
  $logger.level = Logger::DEBUG
end