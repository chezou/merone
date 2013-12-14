def segment(text)
  @tagger ||= TinySegmenter.new
  @tagger.segment(text, ignore_punctuation: true)
end

class Entry < ActiveRecord::Base
  include BabyFace
  baby_face_for features: [:comment],
                categories: [:dragon_quest, :monster_hanter, :skyrim],
                tokenizer: ->(text) { segment(text) }
end
