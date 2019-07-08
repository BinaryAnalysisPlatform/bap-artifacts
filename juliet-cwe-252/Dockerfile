FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN apt-get install unzip && \
    wget https://samate.nist.gov/SARD/testsuites/juliet/Juliet_Test_Suite_v1.3_for_C_Cpp.zip && \
    unzip Juliet_Test_Suite_v1.3_for_C_Cpp.zip

RUN cd C/testcasesupport && \
    cat std_testcase.h | grep -v "//" > _std_testcase.h && \
    mv _std_testcase.h std_testcase.h && \
    cd ../../ && \
    cd C/testcases/CWE252_Unchecked_Return_Value/ && \
    sed -i 's/CC=\/usr\/bin\/gcc/CC=\/usr\/bin\/gcc -std=c89/' Makefile && \
    make

FROM debian:stable-slim
WORKDIR /
COPY --from=builder /build/C/testcases/CWE252_Unchecked_Return_Value/CWE252 /artifact
