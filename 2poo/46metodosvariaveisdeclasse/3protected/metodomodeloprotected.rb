# Método modelo para testar protected com m5
class ClasseTesteProtected
  def m1
    p 'Método 1 publico todos podem me chamar que vou'
  end

  private

  def m2
    p 'Método 2 sou private só atendo os métodos da classe pai e subclasse'
  end

  def m3
    p 'Método 3 sou private só atendo os métodos da classe pai e subclasse'
  end

  protected

  def m5
    puts 'Método m5 sou protected atendo o objeto da classe pai e subclasse do pai'
  end
end
obj = ClasseTesteProtected.new
obj.m1
