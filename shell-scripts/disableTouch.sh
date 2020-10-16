#!/bin/sh
id=$(xinput | grep "G2Touch Multi-Touch by G2TSP" | cut -d "=" -f 2| cut -d "[" -f 1)
echo "id of touch device: $id"
xinput disable $id
echo "disabled touch"
