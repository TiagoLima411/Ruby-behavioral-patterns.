# frozen_string_literal: true

# Subject
class Subject
  def attach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def detach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def notify
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
