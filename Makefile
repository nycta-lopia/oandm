tweefiles=*.twee *.js *.css

all: build/oandm.html build/oandm-test.html

build/oandm.html: $(tweefiles)
	tweego $(tweefiles) --output=build/oandm.html --format=sugarcube-2

build/oandm-test.html: $(tweefiles)
	tweego $(tweefiles) --test --output=build/oandm-test.html --format=sugarcube-2

install: all
	cp build/oandm{,-test}.html ~/public_html/oandm/

clean:
	rm build/oandm{,-test}.html
