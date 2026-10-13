defmodule Descuento do
@moduledoc """

  Módulo que representa una tienda de celulares a los cuales se les aplica un descuento.
  -version 1.0
  -autor:Juan Camilo Agudelo
  -fecha: 2026-09-10
"""
def main do

  valor_producto=
    "Ingrese el valor del producto:"
    |> Util.ingresar(:entero)

  porcentaje_descuento=
    "Ingrese el porcentaje de descuento:"
    |> Util.ingresar(:real)

  valor_descuento=calcular_descuento(valor_producto,porcentaje_descuento)
  valor_final=calcular_valor_final(valor_producto,valor_descuento)

  generar_mensaje(valor_descuento,valor_final)
  |>Util.mostrar_mensaje()

end

def calcular_descuento(valor_producto,porcentaje_descuento)do
  valor_producto*porcentaje_descuento
  |>Float.round(2)
 end

def calcular_valor_final(valor_producto,valor_descuento) do
  valor_producto-valor_descuento
  |>Float.round(2)
end

def generar_mensaje(valor_descuento,valor_final) do
  descuento=Float.to_string(valor_descuento, decimals: 2)
  final=Float.to_string(valor_final, decimals: 2)
  "El valor del descuento es: #{descuento} pesos y el valor final del producto es: #{final} pesos"
end



 end
 Descuento.main
