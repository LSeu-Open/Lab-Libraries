# Testing and Debugging Python

**Level: Intermediate** (some Python experience recommended)

Tests check that your code does what you expect and keep it working as it changes.
Debugging is how you find and fix the cause when it does not. This tutorial covers writing
tests with `pytest` and `unittest`, and debugging with `pdb` and an IDE.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Testing with a framework](#testing-with-a-framework)
  - [Why use a testing framework](#why-use-a-testing-framework)
  - [pytest and unittest](#pytest-and-unittest)
  - [Installing](#installing)
  - [Writing tests with pytest](#writing-tests-with-pytest)
  - [Writing tests with unittest](#writing-tests-with-unittest)
  - [Running and reading results](#running-and-reading-results)
- [Writing effective tests](#writing-effective-tests)
  - [Good practices](#good-practices)
  - [Parametrized tests](#parametrized-tests)
  - [Fixtures](#fixtures)
  - [Test coverage](#test-coverage)
- [Debugging](#debugging)
  - [pdb and breakpoint()](#pdb-and-breakpoint)
  - [Common pdb commands](#common-pdb-commands)
  - [A short debugging session](#a-short-debugging-session)
  - [Conditional breakpoints and post-mortem debugging](#conditional-breakpoints-and-post-mortem-debugging)
  - [Debugging in an IDE](#debugging-in-an-ide)
- [Official documentation](#official-documentation)

## Prerequisites

- **Basic Python** — functions, classes, and exceptions. If you are new to Python, start
  with [A Method to Learn Python from scratch](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/A-Method-to-Learn-Python-from-scratch.md).
- **A working environment** — see
  [Setting Up a Python Development Environment](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/setting-up-a-python-virtual-environment.md).
  Install testing tools inside a virtual environment.

The examples below assume a small module to test. Save this as `calc.py`:

```python
# calc.py

def add(a, b):
    return a + b

def divide(a, b):
    if b == 0:
        raise ValueError("cannot divide by zero")
    return a / b
```

## Testing with a framework

### Why use a testing framework

A test is code that runs your code with known inputs and checks the output against what
you expect. A testing framework discovers your tests, runs them, and reports which passed
and which failed. This lets you:

- Catch regressions — changes that break existing behaviour.
- Document expected behaviour through concrete examples.
- Refactor with confidence, because the tests confirm nothing broke.

### pytest and unittest

Two frameworks are common in Python:

- **pytest** — a third-party framework with concise syntax (plain `assert` statements),
  powerful fixtures, and a large plugin ecosystem. It is the usual choice for new projects.
- **unittest** — part of the standard library, so it needs no installation. Tests are
  written as classes that inherit from `unittest.TestCase`.

pytest can also run `unittest`-style tests, so the two can coexist.

### Installing

`unittest` is built in. Install `pytest` into your environment with:

```sh
pip install pytest
```

Verify it:

```sh
pytest --version
```

### Writing tests with pytest

pytest discovers files named `test_*.py` (or `*_test.py`) and functions named `test_*`.
A test passes if it runs without an `assert` failing or an unexpected exception. Save this
as `test_calc.py` next to `calc.py`:

```python
# test_calc.py
import pytest

from calc import add, divide

def test_add():
    assert add(2, 3) == 5

def test_divide():
    assert divide(10, 2) == 5

def test_divide_by_zero():
    with pytest.raises(ValueError):
        divide(1, 0)
```

`pytest.raises` asserts that the code inside the `with` block raises the given exception —
this is how you test error handling.

### Writing tests with unittest

The same tests written with `unittest`:

```python
# test_calc_unittest.py
import unittest

from calc import add, divide

class TestCalc(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(2, 3), 5)

    def test_divide(self):
        self.assertEqual(divide(10, 2), 5)

    def test_divide_by_zero(self):
        with self.assertRaises(ValueError):
            divide(1, 0)

if __name__ == "__main__":
    unittest.main()
```

`unittest` uses assertion methods such as `assertEqual`, `assertTrue`, and `assertRaises`
rather than the plain `assert` statement.

### Running and reading results

Run pytest from the project directory:

```sh
pytest          # run all tests
pytest -v       # verbose: list each test and its result
pytest -k add   # run only tests whose name contains "add"
```

A passing run reports each test with a dot or `PASSED`, then a summary. A failure shows the
test name, the line that failed, and the expected and actual values, for example:

```
    def test_add():
>       assert add(2, 3) == 6
E       assert 5 == 6

test_calc.py:6: AssertionError
========================= 1 failed, 2 passed in 0.02s =========================
```

Run unittest tests with:

```sh
python -m unittest              # discover and run all tests
python -m unittest -v           # verbose
python -m unittest test_calc_unittest
```

## Writing effective tests

### Good practices

- **Test one behaviour per test.** A focused test makes a failure easy to interpret.
- **Use clear names.** `test_divide_by_zero_raises` reads better than `test_divide_2`.
- **Cover edge cases.** Empty inputs, zero, negative numbers, and boundary values are
  where bugs hide.
- **Make tests independent.** A test should not depend on another test having run first.
- **Keep tests fast and deterministic.** Avoid network calls and randomness; if you need
  them, isolate or mock them.

### Parametrized tests

To run the same test logic over several inputs without repetition, use
`@pytest.mark.parametrize`:

```python
import pytest

from calc import add

@pytest.mark.parametrize("a, b, expected", [
    (2, 3, 5),
    (0, 0, 0),
    (-1, 1, 0),
    (100, 200, 300),
])
def test_add(a, b, expected):
    assert add(a, b) == expected
```

pytest reports each set of inputs as a separate test, so you see exactly which case fails.

### Fixtures

A fixture provides reusable setup (and optional cleanup) to tests that request it by name:

```python
import pytest

@pytest.fixture
def sample_data():
    return [1, 2, 3, 4]

def test_sum(sample_data):
    assert sum(sample_data) == 10

def test_length(sample_data):
    assert len(sample_data) == 4
```

For setup that must be undone afterwards (for example, a temporary file or a database
connection), use `yield` and put the cleanup after it:

```python
@pytest.fixture
def temp_file(tmp_path):
    path = tmp_path / "data.txt"
    path.write_text("content")
    yield path
    # cleanup runs here, after the test using the fixture finishes
```

`tmp_path` is a built-in pytest fixture that supplies a unique temporary directory.

### Test coverage

Coverage measures which lines of your code the tests actually run. Install the pytest
plugin:

```sh
pip install pytest-cov
```

Then report coverage for the `calc` module:

```sh
pytest --cov=calc
```

Treat coverage as a guide, not a goal in itself: high coverage of meaningful assertions is
valuable, but a high percentage alone does not guarantee the tests check the right things.

## Debugging

When a test fails or code misbehaves, a debugger lets you pause execution and inspect the
program's state, rather than scattering `print()` statements.

### pdb and breakpoint()

`pdb` is the standard-library debugger. Since Python 3.7, the simplest way to enter it is
the built-in `breakpoint()` function — insert it where you want execution to pause:

```python
def divide(a, b):
    breakpoint()        # execution pauses here and drops into the debugger
    return a / b
```

When the program reaches `breakpoint()`, it opens an interactive `(Pdb)` prompt at that
line. `breakpoint()` calls `pdb.set_trace()` by default. Two conveniences:

- Set the environment variable `PYTHONBREAKPOINT=0` to disable all `breakpoint()` calls
  without editing the code (useful for a normal run).
- Set `PYTHONBREAKPOINT` to another debugger's entry point to switch debuggers.

On Python 3.6 and earlier, use `import pdb; pdb.set_trace()` instead.

### Common pdb commands

At the `(Pdb)` prompt:

| Command | Action |
|:---|:---|
| `n` (next) | Run the current line, without stepping into function calls |
| `s` (step) | Step into the function called on the current line |
| `c` (continue) | Resume until the next breakpoint or the end |
| `l` (list) | Show the source around the current line |
| `p expr` | Print the value of `expr` (`pp` for pretty-print) |
| `w` (where) | Show the call stack |
| `b N` | Set a breakpoint at line `N` |
| `r` (return) | Continue until the current function returns |
| `q` (quit) | Stop debugging and exit |

Type a variable name (or `p name`) to inspect it, and any Python expression to evaluate it.

### A short debugging session

Suppose `divide` is returning a surprising result. Add a breakpoint and run the program:

```python
def divide(a, b):
    breakpoint()
    return a / b
```

```
(Pdb) p a, b
(7, 2)
(Pdb) p a / b
3.5
(Pdb) n
> calc.py(4)divide()->3.5
(Pdb) c
```

Here `p a, b` inspects the arguments, `p a / b` evaluates the expression, `n` runs the
return line, and `c` resumes execution.

### Conditional breakpoints and post-mortem debugging

- **Conditional breakpoint** — break only when a condition holds:
  ```
  (Pdb) b 12, x > 100
  ```
  This stops at line 12 only when `x > 100`, which is useful inside loops.
- **Post-mortem debugging** — start the debugger automatically when a script crashes,
  landing at the line that raised the exception:
  ```sh
  python -m pdb script.py
  ```

### Debugging in an IDE

Graphical debuggers offer the same capabilities with a visual interface.

- **VS Code** — click in the left margin (gutter) to set a breakpoint, then start
  debugging with **Run > Start Debugging** (`F5`). Use the Variables and Watch panels to
  inspect state, and the toolbar to step over, step into, and continue. Right-click a
  breakpoint to make it conditional.
- **PyCharm** — click the gutter to set a breakpoint, then **Run > Debug**. The Debug tool
  window shows variables, the call stack, and a watch list; right-click a breakpoint to add
  a condition.

A practical workflow: when a test fails, set a breakpoint in the failing code (or run the
test under the IDE debugger), inspect the values, fix the cause, then add a test that
covers the case so it cannot regress.

## Official documentation

- **pytest** — [docs.pytest.org](https://docs.pytest.org/en/stable/)
- **unittest** — [docs.python.org/3/library/unittest.html](https://docs.python.org/3/library/unittest.html)
- **pdb** — [docs.python.org/3/library/pdb.html](https://docs.python.org/3/library/pdb.html)
- **Coverage.py** — [coverage.readthedocs.io](https://coverage.readthedocs.io/)
