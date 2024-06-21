Chapter 2
Script shebang

2.1 env shebang
#!/usr/bin/env bash


adv:
	-it will user whatever interpreter appears first in the user's $PATH (1, 2012)
	- more portability
dis:
	same as above no control will use the first one(1, 2012)


#direct shebang
#!/bin/bash

2.2 interpreter path is explicitly specified and use that exact one. 
hence less portability if different paths


1. https://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my

