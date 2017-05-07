require "test_helper"

class GeneratorTest < Minitest::Test
  def setup
    @gen = Anzen::Na::Password::Generator.generate(num: 10)
  end

  def test_generate_password_length
    assert_equal @gen.size, 10
  end
end
