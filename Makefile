all: nopic64 nopic32 pic64 pic32

nopic64:
	g++ -g -shared share.cpp -o nopic64.so -fPIC 
	g++ -g main.cpp -o nopic64.exe ./nopic64.so
pic64:
	g++ -g -shared share.cpp -o pic64.so -fPIC
	g++ -g main.cpp -o pic64.exe ./pic64.so -fPIE

nopic32:
	g++ -g -shared share.cpp -o nopic32.so -m32
	g++ -g main.cpp -o nopic32.exe ./nopic32.so -m32


pic32:
	g++ -g -shared share.cpp -o pic32.so -m32 -fPIC
	g++ -g main.cpp -o pic32.exe ./pic32.so -m32 -fPIE


clean:
	rm -rf *.so *.o *.exe *.dSYM
