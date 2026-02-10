# Gradle Init

Simple Gradle init with common [Java](/buildSrc/src/main/kotlin/common-java.gradle.kts)
and [Kotlin](/buildSrc/src/main/kotlin/common-kotlin.gradle.kts) configuration plugins.

Check [getting started](#Getting-started).

## Versions

* Gradle version `9.3.1`
* Kotlin version `2.1.10`
* Java version `23`

## Features

* Gradle [Toolchains](https://docs.gradle.org/current/userguide/toolchains.html) for JVM projects.
* Gradle [Version Catalogs](https://docs.gradle.org/current/userguide/platforms.html) feature via
  the [libs TOML file](/gradle/libs.versions.toml).
* Gradle [JVM Test Suites](https://docs.gradle.org/current/userguide/jvm_test_suite_plugin.html) feature for defining
  test suites.

## Getting started

### Prerequisites

* Bash should be installed
* `curl` or `wget` should be installed

### Install

To use this project template simply run one of the following commands in your terminal.

| Method | Command                                                                                                     |
|--------|-------------------------------------------------------------------------------------------------------------|
| curl   | `bash -c "$(curl -fsSL "https://raw.githubusercontent.com/chriptus13/GradleInit/refs/heads/main/init.sh")"` |
| wget   | `bash -c "$(wget -O- "https://raw.githubusercontent.com/chriptus13/GradleInit/refs/heads/main/init.sh")"`   |

### Tips

If you tend to start a lot of projects you can include the following in your Shell profile and simple do `new_jvm_project <project_name>` whenever you're starting a new project.

```bash
new_jvm_project() {
  project_name=$1
  echo "$project_name" | bash -c "$(curl -fsSL "https://raw.githubusercontent.com/chriptus13/GradleInit/refs/heads/main/init.sh")"
}
```
