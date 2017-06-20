# api exception class
class APIException < StandardError
  attr_reader :code, :reason
end

# force update error message
class ForceUpdateError < APIException
  def initialize
    @code = 621
    @reason = 'Please update the app'
  end
end

# skip update error message
class SkipUpdateError < APIException
  def initialize
    @code = 622
    @reason = 'Please update the app or skip this'
  end
end
