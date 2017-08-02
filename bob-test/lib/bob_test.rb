class BobTest
  def initialize(remark)
    @remark = remark.gsub(/[ ,]/, '')
  end

  def assert_equal
    hey = ""
    split = @remark.split("")
    split.each() do |word|
      if word==("!")
        hey = "Whoa chill out"
      elsif word==(".")
        hey = "Whatever"
      elsif word==("?")
        hey = "Sure"
      elsif word==word.upcase
        hey = "Whoa chill out"
      end
    end
    hey
  end
end
