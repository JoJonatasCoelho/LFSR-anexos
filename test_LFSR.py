
import cocotb
from cocotb.triggers import RisingEdge

@cocotb.test()
async def test_lsfr32(dut):
    """Test LSFR32 module."""
    
    # Verifica o valor inicial de num
    assert dut.num.value == 15, f"Valor inicial errado! Esperado 15, obtido {dut.num.value}"

    # Espera por alguns ciclos de clock
    for _ in range(10):
        await RisingEdge(dut.clk)

    # Checa se o valor de 'num' está mudando
    assert dut.num.value != 15, "LSFR32 não está mudando corretamente!"
