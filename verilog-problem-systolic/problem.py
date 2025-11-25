from problem_spec import ProblemSpec, PROBLEM_REGISTRY

# Load description from docs folder
with open("docs/Specification.md", "r") as f:
    spec_text = f.read()

PROBLEM_REGISTRY.append(
    ProblemSpec(
        id="systolic_array_mac",
        description=spec_text,
        difficulty="hard",
        base="systolic_array_baseline",
        test="systolic_array_test",
        golden="systolic_array_golden",
        test_files=["tests/tb_systolic_array.sv"],
    )
)
