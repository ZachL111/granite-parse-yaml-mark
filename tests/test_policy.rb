require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = GraniteParseYamlMark::Signal.new(demand: 79, capacity: 97, latency: 27, risk: 7, weight: 8)
    assert_equal 143, GraniteParseYamlMark.score(signal_case_1)
    assert_equal 'review', GraniteParseYamlMark.classify(signal_case_1)
    signal_case_2 = GraniteParseYamlMark::Signal.new(demand: 67, capacity: 85, latency: 25, risk: 21, weight: 4)
    assert_equal 47, GraniteParseYamlMark.score(signal_case_2)
    assert_equal 'review', GraniteParseYamlMark.classify(signal_case_2)
    signal_case_3 = GraniteParseYamlMark::Signal.new(demand: 102, capacity: 78, latency: 9, risk: 25, weight: 13)
    assert_equal 185, GraniteParseYamlMark.score(signal_case_3)
    assert_equal 'accept', GraniteParseYamlMark.classify(signal_case_3)
  end
end
