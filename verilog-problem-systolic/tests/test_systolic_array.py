import subprocess

def test_systolic_array_hidden():
    result = subprocess.run(
        ["iverilog", "-o", "out.vvp", "sources/systolic_array.v", "tests/tb_systolic_array_hidden.py"],
        capture_output=True,
        text=True
    )
    assert result.returncode == 0

    sim = subprocess.run(["vvp", "out.vvp"], capture_output=True, text=True)
    assert sim.returncode == 0

