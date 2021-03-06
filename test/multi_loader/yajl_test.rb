require File.expand_path('common', File.dirname(__FILE__))
begin
  require 'prmd/multi_loader/yajl'
rescue LoadError
  #
end

class PrmdMultiLoaderYajlTest < Minitest::Test
  include PrmdLoaderTests

  def loader_module
    Prmd::MultiLoader::Yajl
  end

  def testing_filename
    schemas_path('data/test.json')
  end
end if defined?(Yajl)
