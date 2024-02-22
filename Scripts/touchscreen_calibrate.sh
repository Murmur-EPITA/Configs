#!/bin/sh

# Find touchscreen with `xinput --list`, then:

set -e

xinput --map-to-output 'G2Touch Multi-Touch by G2TSP' "HDMI-1-1"
