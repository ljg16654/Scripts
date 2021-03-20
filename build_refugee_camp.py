#!/usr/bin/python3

import sys
import subprocess

if len(sys.argv) != 3:
    print("usage: ", str(sys.argv[0]), "monitor_to_remove monitor_safe")
    raise RuntimeError("Wrong number of arguments")

# number of existing refugee camps
desktop_names=subprocess.run(["bspc", "query", "--names", "-D"],
                             stdout=subprocess.PIPE).stdout.decode()

if "refugee_camp" in desktop_names:
    raise RuntimeError("refugee_camp already exists!")

ids_stdout= subprocess.run(["bspc", "query", "-N", "-m", str(sys.argv[1])],
                           stdout=subprocess.PIPE).stdout.decode().split("\n")[:-1]

subprocess.run(["bspc", "monitor", str(sys.argv[2]), "-a", "refugee_camp"])

for id in ids_stdout:
    subprocess.run(["bspc", "node", id, "-d", "refugee_camp"])
