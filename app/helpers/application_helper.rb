module ApplicationHelper
  def symbols
    ["Two Reeds", "Lion", "Twisted Flax", "Horned Viper", "Water", "Eye of Horus"]
  end

  def remove_spaces(name)
    name.gsub(/\s/, "")
  end
end
