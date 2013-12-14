module EntryDecorator
  def category
    if self.baby_face.dragon_quest?
      "ドラクエ"
    elsif self.baby_face.monster_hanter?
      "モンハン"
    elsif self.baby_face.skyrim?
      "Skyrim"
    end
  end
end
