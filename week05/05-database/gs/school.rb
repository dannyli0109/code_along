class School

  def initialize name
    @school_db = {}
  end

  def db
    return @school_db
  end

  def add name, grade
    if @school_db[grade] == nil
      @school_db[grade] = []
    end
    @school_db[grade].push(name)
  end

  def grade grade
    return @school_db[grade]
  end

  def sort

    @school_db = @school_db.sort.to_h
    @school_db.each do |key, value|
      @school_db[key] = value.sort
    end
    return @school_db
  end
end
