# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      if enc.dummy?
        assert(RegexpM17N.non_empty?('.'.force_encoding(enc)))
      else
        assert(RegexpM17N.non_empty?('.'.encode(enc)))
      end
    end
  end
end
