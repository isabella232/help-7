#!/usr/bin/env python3

import os
import sys

import pastel

MAKE_ERROR = "<error>ERROR: Use `make` instead of scripts manually.</error>"

DISALLOWED_STRINGS = [r"“", "”", r"‘", r"’", ".  ", "&\\", "&#x"]


def main():

    printer = pastel.Pastel(True)
    printer.add_style("file", "light_blue")
    printer.add_style("info", "default")
    printer.add_style("warning", "yellow")
    printer.add_style("error", "red")
    printer.add_style("severe", "red")

    if not os.environ.get("ROOT"):
        print(printer.colorize(MAKE_ERROR))
        sys.exit(1)

    filename = sys.argv[1]

    with open(filename) as file:
        content = file.read().strip()

    content_lines = content.splitlines()

    outputs = []

    for line_num, line in enumerate(content_lines):
        error = False
        for str in DISALLOWED_STRINGS:
            if str in line:
                error = True
                pattern = str
        if error:
            location = f"<file>{filename}:{line_num}</file>"
            msg = f"The string `{pattern}` is disallowed"
            warning = f"<warning>WARNING: {msg}</warning>"
            outputs.append(f"{location}\n{warning}")

    if outputs:
        for output in outputs:
            print(printer.colorize(output))
        sys.exit(1)


if __name__ == "__main__":
    main()
