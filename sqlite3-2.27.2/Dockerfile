# sqlite3 3.27.2
# CVE-2019-9937 (CWE 476)

FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN apt-get install -y libreadline-dev unzip libncurses5-dev
RUN wget https://www.sqlite.org/2019/sqlite-amalgamation-3270200.zip && \
    unzip sqlite-amalgamation-3270200.zip && \
    cd sqlite-amalgamation-3270200 && \
    cc -Os -I. -DSQLITE_THREADSAFE=0 -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 \
       -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_EXPLAIN_COMMENTS -DHAVE_USLEEP -DHAVE_READLINE  shell.c sqlite3.c \
       -ldl -lreadline -lncurses -lm -o sqlite3 && \
    cp sqlite3 /build

FROM debian:stable-slim
WORKDIR /
COPY --from=builder /build/sqlite3 /artifact
