#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p out/remote-tests
"${JAVA_HOME:+$JAVA_HOME/bin/}javac" -encoding UTF-8 -d out/remote-tests \
  app/src/com/ggb/tv/SabrinaRemote.java app/src/com/ggb/tv/SkyworthRemote.java \
  tests/SabrinaRemoteTest.java tests/SkyworthRemoteTest.java
"${JAVA_HOME:+$JAVA_HOME/bin/}java" -cp out/remote-tests com.ggb.tv.SabrinaRemoteTest
"${JAVA_HOME:+$JAVA_HOME/bin/}java" -cp out/remote-tests com.ggb.tv.SkyworthRemoteTest
