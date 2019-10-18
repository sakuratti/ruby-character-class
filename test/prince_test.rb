# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を派手にする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyソースコードを読み込む
require_relative '../lib/prince.rb'

# テストを実行するためのクラス
class PrinceTest < Minitest::Test
  # テストを実行する前の準備
  def setup
    @prince = Prince.new('堂林翔太', 60)
  end

  def test_name
    assert_equal(@prince.name, '堂林翔太')
  end

  def test_power
    assert_equal(@prince.power, 60)
  end

  def test_prince
    prince1 = Prince.new('高橋慶彦', 65)

    assert_equal(prince1.name, '高橋慶彦')
    assert_equal(prince1.homerun?, true)
  end
end