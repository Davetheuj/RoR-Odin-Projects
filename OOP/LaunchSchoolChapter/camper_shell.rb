module CamperShell
  attr_accessor :isOpen
  def pop_latch
    puts isOpen ? "The back was closed" : "The back was opened"
    self.isOpen = !isOpen
  end
end