"""Minimal Streamlit entry point used by the packaged application."""

from __future__ import annotations

import runpy


runpy.run_module("app", run_name="__main__")
