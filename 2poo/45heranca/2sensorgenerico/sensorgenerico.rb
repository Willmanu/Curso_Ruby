# Sensor genérico
class Sensor
  def instalar
    puts 'Estou instalando'
  end

  def iniciar
    puts 'Estou inciando'
  end

  def coletar_metricas
    puts 'Estou coletando'
    puts 'Estou analisando as métricas'
  end
end

sensor = Sensor.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas
