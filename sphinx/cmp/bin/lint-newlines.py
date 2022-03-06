#!/usr/bin/env python3

import os
import sys
import re

import pastel

MAKE_ERROR = "<error>ERROR: Use `make` instead of scripts manually.</error>"


def main():

    printer = pastel.Pastel(True)
    printer.add_style("file", "light_blue")
    printer.add_style("warning", "yellow")
    printer.add_style("error", "red")

    if not os.environ.get("ROOT"):
        print(printer.colorize(MAKE_ERROR))
        sys.exit(1)

    filename = sys.argv[1]

    with open(filename) as file:
        content = file.read().strip()

    split = len(re.split("\n\n\n", content))
    # We subtract one because if new multiple empty newlines are detected, the
    # `split` function should return a single array element
    num_multi_newlines = split - 1

    plural = num_multi_newlines > 1 and "s" or ""

    if num_multi_newlines:
        output_file = f"<file>{filename}</file>"
        output_warning = (
            f"<warning>WARNING: {num_multi_newlines} "
            + f"consecutive empty newline{plural}</warning>"
        )
        print(printer.colorize(output_file))
        print(printer.colorize(output_warning))
        sys.exit(1)


if __name__ == "__main__":
    main()
