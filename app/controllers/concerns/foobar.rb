class Foobar
  def initialize(baz)
  	@baz = baz
  end

  def bar(sym, obj)
  	sym.to_s + @baz + obj[:sat].to_s
  end
end
