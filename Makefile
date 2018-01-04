MENDELSON_AS2_VERSION = 1.1b53

.PHONY : image

image : image/mendelson-$(MENDELSON_AS2_VERSION).zip
	docker build image -t saver/mendelson-as2:$(MENDELSON_AS2_VERSION)

image/mendelson-$(MENDELSON_AS2_VERSION).zip :
	curl -L http://downloads.sourceforge.net/project/mec-as2/install_mendelson_opensource_as2_$(MENDELSON_AS2_VERSION).zip > $@
