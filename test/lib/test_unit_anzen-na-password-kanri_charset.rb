require "test_helper"

class TestCharSet < Minitest::Test
  def setup
    @charset = Anzen::Na::Password::CharSet.new
  end

  def test_pattern_full
    assert_includes @charset.pattern(type: :full), "\\"
  end

  def test_pattern_basic
    refute_includes @charset.pattern(type: :basic), "\\"
  end

  def test_pattern_integer
    assert_equal @charset.pattern(type: 10), %w(1 0)
  end

  def test_pattern_word
    assert_includes @charset.pattern(type: "あいうえお"), "あ"
  end

  def test_pattern_typeerror
    assert_raises { @charset.pattern(type: @charset) }
  end
end
