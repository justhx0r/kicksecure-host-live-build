#!/usr/bin/env python3
import argparse
from stem.control import Controller

parser = argparse.ArgumentParser()
parser.add_argument('-n', type=int, default=7, help='Number of exit nodes to print')
args = parser.parse_args()

num_exit_nodes = args.n

with Controller.from_port(port = 9051) as controller:
    controller.authenticate("kali")

    exit_nodes = []
    for desc in controller.get_server_descriptors():
        if desc.exit_policy.is_exiting_allowed():
            exit_nodes.append(desc.fingerprint)
            if len(exit_nodes) >= num_exit_nodes:
                break

    for exit_node in exit_nodes:
        print(exit_node)
