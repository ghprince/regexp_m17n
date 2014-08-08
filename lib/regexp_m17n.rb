module RegexpM17N
  def self.non_empty?(str)
    str = str.force_encoding('utf-8') if str.encoding.dummy?
    str =~ Regexp.new("^.+$".encode(str.encoding))
  end
end
