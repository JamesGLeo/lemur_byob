class Page
  def header
    @header || ""
  end

  def header=(text)
    @header = text
  end
end