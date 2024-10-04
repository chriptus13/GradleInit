# Gradle Init

Simple Gradle init with common [Java](/buildSrc/src/main/kotlin/common-java.gradle.kts) and [Kotlin](/buildSrc/src/main/kotlin/common-kotlin.gradle.kts) configuration plugins.

## Versions

* Gradle version `8.10.2`
* Kotlin version `2.0.20`
* Java version `21`

## Features

* Gradle [Version Catalogs](https://docs.gradle.org/current/userguide/platforms.html) feature via the [libs TOML file](/gradle/libs.versions.toml).
* Gradle [JVM Test Suites](https://docs.gradle.org/current/userguide/jvm_test_suite_plugin.html) feature for defining test suites.