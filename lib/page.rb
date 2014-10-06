class Page
  def header
    @header || ""
  end

  def header=(text)
    @header = text
  end

  def article
    @article || ""
  end

  def article=(text)
    @article = text
  end

  def timestamp
    @timestamp
  end

  def timestamp=(time)
    @timestamp = Time.new(2014, 4, 1, 14, 47, 4)
  end

  def to_s
    "Header: #{@header}\nTime: #{@timestamp}\nArticle: #{@article}"
  end
end