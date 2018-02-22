# run 'make all' to recompile vector.py and coord.py
# run 'make clean' to remove the *-parsed.py files created during compilation of vector.py and coord.py

all: vector.py coord.py

vector.py: vector-pyexpander.py
	expander3.py vector-pyexpander.py > vector-parsed.py
	pyminifier vector-parsed.py > vector.py

coord.py: coord-pyexpander.py
	expander3.py coord-pyexpander.py > coord-parsed.py
	pyminifier coord-parsed.py > coord.py

clean:
	-rm vector-parsed.py
	-rm coord-parsed.py

.PHONY: all clean

