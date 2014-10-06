class Page
  def header
    @header || ""
  end

  def header=(text)
    @header = text
  end

  def article
    ""
  end
end