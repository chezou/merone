class Tasks::CreateBatch
  def self.execute
    categories = {
      dragon_quest: "dragon_quest",
      monster_hanter: "mhf",
      skyrim: "skyrim"
    }

    categories.each do |category, file|
      self.open_and_create("./data/#{file}.txt", category)
    end

    Entry.where.not(comment: nil).first.baby_face.save
  end

  def self.create_with_train(text, category)
    e = Entry.create(comment: text)
    method = "train_#{category}".intern
    e.baby_face.send(method)
  end

  def self.open_and_create(file, category)
    line = 0
    open(file) do |f|
      while l = f.gets
        next if l.nil? || l.chomp!.empty?
        break if line == 10000
        line += 1
        create_with_train(l, category)
      end
    end
  end
end
