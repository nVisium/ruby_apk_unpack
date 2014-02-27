require 'test/unit'
require 'lib/utilities/parsing'
require 'lib/utilities/string'
require 'lib/decompiler/decompiler'

class ParseYamlTest < Test::Unit::TestCase
  
  def test_apk_tool_output
    Parsing.parse("tests/test.yaml", true)
    assert Dir.exists?("#{ENV['OUTPUT_DIR']}/apktool_output"), "The output of APKTool (apk_output directory) was not found!"
  end
  
  def test_dex2jar_output
    apk_name = File.basename("#{ENV['APK']}").sub(/.apk/, ".jar")
    assert File.exists?("#{ENV['OUTPUT_DIR']}/dex2jar_output/#{apk_name}"), "The output of Dex2Jar (JAR File) was not found!"
  end
  
end