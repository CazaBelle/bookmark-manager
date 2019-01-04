require './lib/bookmark'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager")
DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_upgrade!
DataMapper.finalize