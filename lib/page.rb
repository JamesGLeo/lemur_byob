class Page
  attr_accessor :header, :article, :timestamp
  # attr_reader :header
  # attr_writer :header
  def initialize(options={})
    #{"header" => false }
    @header = options["header"] || ""
    @article = options["article"] || ""
    @timestamp = options["timestamp"]
  end

  def to_s
    "Header: #{@header}\nTime: #{@timestamp}\nArticle: #{@article}"
  end
end