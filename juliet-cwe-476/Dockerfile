FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN apt-get install unzip && \
    wget https://samate.nist.gov/SARD/testsuites/juliet/Juliet_Test_Suite_v1.3_for_C_Cpp.zip && \
    unzip Juliet_Test_Suite_v1.3_for_C_Cpp.zip

RUN cd C/testcases/CWE476_NULL_Pointer_Dereference/ && \
    mv main_linux.cpp main_linux.c && \
    rm *.cpp && \
    sed -i 's/MAIN=main_linux.cpp/MAIN=main_linux.c/' Makefile && \
    sed -i 's/$(CPP) $(LFLAGS) $(OBJECTS) -o $(TARGET)/$(CC) $(LFLAGS) $(INCLUDES) $(OBJECTS) -o $(TARGET)/' Makefile && \
    make

FROM debian:stable-slim
WORKDIR /
COPY --from=builder /build/C/testcases/CWE476_NULL_Pointer_Dereference/CWE476 /artifact
