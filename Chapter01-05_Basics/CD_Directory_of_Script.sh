#!/bin/bash
echo "Calling from Dir:"
pwd
cd "$(dirname "$(readlink -f "$0")")"
echo "Now in Dir:"
pwd
