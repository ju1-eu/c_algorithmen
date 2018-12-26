# ju -- https://bw1.eu -- 26-Dez-18  -- Makefile
# Win10
# gcc -v // Version 7.1.0
# 26-Dez-18
#
TARGETS=\
	bitweisesEinerkomplement.exe \
	bitweisesODER-v02.exe \
	bitweisesODER.exe \
	bitweisesUND.exe \
	bitweisesXOR.exe \
	bitweiseVerschiebung.exe \
	eingabe-user-pruefen-v02.exe \
	eingabe-user-pruefen.exe \
	halloC-v01.exe \
	halloC-v02.exe \
	integer.exe \
	logik-v02.exe \
	logik.exe \
	mitZuruecklegen.exe \
	modulo.exe \
	schaltung.exe \
	halloC++-v01.exe \
	halloC++-v02.exe \
# 
CC:=gcc
CLIBS=-lz meineFkt.c meineFkt.h -lm
CFLAGS=-Wall -Wextra -std=c11 -lpthread -pthread -O0 -Wno-missing-field-initializers -g
CXX:=g++
CXXLIBS=-lz meineFkt.c meineFkt.h -lm
CXXFLAGS=-Wall -Wextra -std=c++11 -lpthread -pthread -O0 -Wno-missing-field-initializers -g
CXX14FLAGS=-Wall -Wextra -std=c++1y -lpthread -pthread -O0 -Wno-missing-field-initializers -g
CXX17FLAGS=-Wall -Wextra -std=c++17 -lpthread -pthread -O0 -Wno-missing-field-initializers -g

all: $(TARGETS)

%.exe: %.cpp
	$(CXX) $(CXX17FLAGS) -o $@ $< $(CXXLIBS)

%.exe: %.c
	$(CC) $(CFLAGS) -o $@ $< $(CLIBS)

clean:
	#rm -f *.o 
	rm *.exe
