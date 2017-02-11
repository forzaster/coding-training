TARGET = main

SWIFTC = swiftc
SOURCES = main.swift Item.swift	CheckDuplication.swift

$(TARGET): $(SOURCES)
	$(SWIFTC) $^ -o $@

clean:
	rm -rf $(TARGET)
