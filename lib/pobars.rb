class Pobars

  def self.circular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")
    progress = ""

    steps = ["|", "/", "-", "\\"]
    part = 100 / length

    remaining = percent.to_i / part
    return "\r#{label} #{symbol*(percent.to_i / part)}" + remaining_symbol*(length - (remaining)) + " #{percent != 100 ? steps[percent % steps.length] : ""}"
  end
  
  def self.regular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")
    progress = ""
    part = 100 / length

    remaining = percent.to_i / part
    return "\rprogress: #{symbol*(percent.to_i / part)}" + remaining_symbol*(length - (remaining)) + " #{percent.to_i}% "
  end
end