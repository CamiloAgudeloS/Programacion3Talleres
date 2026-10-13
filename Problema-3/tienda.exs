defmodule Tienda do
  @moduledoc """
  Módulo que representa una tienda de productos.
  -version 1.0
  -autor:Juan Camilo Agudelo
  -fecha: 2026-09-8
  """

  @doc """
  Función principal que solicita al usuario el valor de la factura y el pago y calcula la devuelta.
  """
  def main do
   valor_compra= 
    "Ingrese el valor total de la compra:"
    |> Util.ingresar(:entero)

  dinero_entregado=
    "Ingrese el dinero entregado:"
    |> Util.ingresar(:entero)

  calcular_devuelta(valor_compra,dinero_entregado)
  |>generar_mensaje()
  |>Util.mostrar_mensaje()

  end

def calcular_devuelta(valor_compra,dinero_entregado) do

  dinero_entregado-valor_compra

end


def generar_mensaje(devuelta) do
  "El dinero a devolver es: #{devuelta} pesos"
end


end

Tienda.main
