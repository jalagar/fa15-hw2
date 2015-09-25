class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if params[:name].empty? && params[:adjective].empty?
      @text = "You are nothing"
    else
      @text = params[:name] + params[:adjective]
    end
  end

  def age
  end

  def person
    person = Person.new(params[:name], params[:age])
    @introduce = person.introduce
    @birth = person.birth_year()
    @nickname = person.nickname()
  end
end
