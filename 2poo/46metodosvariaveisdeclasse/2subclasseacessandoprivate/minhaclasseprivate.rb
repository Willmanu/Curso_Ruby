# testando o private
class MinhaClassePrivate
  def m1
    p 'Método 1'
  end

  private

  def m2
    p 'Método 2'
  end

  def m3
    p 'Método 3'
  end
end
obj = MinhaClassePrivate.new
obj.m1

=begin
obj.m2
obj.m3
=end
