require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = GraniteParseYamlMark::DomainReview.new(signal: 48, slack: 32, drag: 32, confidence: 77)
    assert_equal 109, GraniteParseYamlMark.domain_review_score(item)
    assert_equal "watch", GraniteParseYamlMark.domain_review_lane(item)
  end
end
