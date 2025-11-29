import subprocess
import pytest

def test_systolic_array_hidden():
    result = subprocess.run(
        ["pytest", "tests/tb_systolic_array_hidden.py"],
        capture_output=True,
        text=True
    )
    assert result.returncode == 0
