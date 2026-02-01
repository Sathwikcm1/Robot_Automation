
# Robot_Automation

Learning Automation — Robot Framework + Selenium starter project

[![CI](https://github.com/Sathwikcm1/Robot_Automation/actions/workflows/ci.yml/badge.svg)](https://github.com/Sathwikcm1/Robot_Automation/actions)

What is this
- A lightweight starter repo for learning Robot Framework with Selenium.
- Provides a pinned set of dependencies in requirements.txt.
- Intended structure: tests/ (Robot suites), resources/, keywords/, and reports/ for outputs.

Why this repo exists
- To practice writing Robot Framework test suites driven by Selenium.
- To learn test automation workflows and CI integration.

Quickstart — prerequisites
- Python 3.11+ installed locally
- A virtual environment is recommended (venv)
- Chrome (or another browser) + compatible webdriver (e.g., chromedriver) on PATH, or use WebDriverManager in your environment

Setup (local)
1. Create and activate a virtual environment
   python -m venv .venv
   source .venv/bin/activate  # macOS / Linux
   .venv\Scripts\activate     # Windows (PowerShell)

2. Install dependencies
   pip install --upgrade pip
   pip install -r requirements.txt

Run tests
- Run all Robot suites in tests/:
  robot --outputdir reports tests/

- Run a specific suite/file:
  robot --outputdir reports tests/MySuite.robot

Reports
- Robot generates output.xml, log.html and report.html in the outputdir (reports/ above).
- In CI these reports are uploaded as artifacts called `robot-reports`.

Recommended project layout
- tests/
  - *.robot           # Robot test suites
- resources/
  - *.resource        # Robot resource files (variables/keywords)
- keywords/
  - *.py              # Python keyword libraries (if used)
- reports/
  - (generated artifacts)
- requirements.txt
- .github/workflows/ci.yml

Repository hygiene (notes)
- Do not commit virtualenv folders (venv/, .venv/, pyvenv.cfg). Add them to .gitignore (already present).
- Keep requirements pinned. Consider using pip-tools or poetry when the project grows.
- Add a LICENSE and CONTRIBUTING.md when you accept contributions.

Contributing
- Open an issue or PR.
- If adding tests, include them under tests/ and ensure they run locally via `robot ...` before pushing.

License
- Add a LICENSE file (e.g., MIT) if you want others to reuse this code.

Contact
- Repository owner: @Sathwikcm1
