#!/usr/bin/env python3

import os
import sys
import fileinput

import pastel

MAKE_ERROR = "<error>ERROR: Use `make` instead of scripts manually.</error>"


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

    for line in fileinput.input():
        line = line.strip()
        if line.startswith("INFO"):
            line = f"<info>{line}</info>"
        if line.startswith("WARNING"):
            line = f"<warning>{line}</warning>"
        if line.startswith("ERROR"):
            line = f"<error>{line}</error>"
        print(printer.colorize(line))


if __name__ == "__main__":
    main()
