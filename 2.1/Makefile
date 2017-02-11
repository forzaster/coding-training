TARGET = main

SWIFTC = swiftc
SOURCES = main.swift CheckDuplication.swift ../2.common/Item.swift	

$(TARGET): $(SOURCES)
	$(SWIFTC) $^ -o $@

clean:
	rm -rf $(TARGET)
