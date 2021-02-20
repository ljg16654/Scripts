#!/usr/bin/python3

import subprocess
qute_ids_stdout = subprocess.run(
    ["xdo", "id", "-N", "qutebrowser"], stdout=subprocess.PIPE
).stdout.decode().split("\n")

other_nodes_in_desktop = subprocess.run(
    ["bspc", "query", "-N", "next.local"],
    stdout=subprocess.PIPE
).stdout.decode().split("\n")

# remove empty strings
A = ' '.join(qute_ids_stdout).split()
B = ' '.join(other_nodes_in_desktop).split()

# ids of qutebrjowser in current desktop
T = list(set(A) & set(B))

# toggle hidden flag of them
for id in T:
    subprocess.run(["bspc", "node", id, "--flag", "hidden",
                    "focused"])
