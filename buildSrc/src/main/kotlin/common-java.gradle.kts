import org.gradle.accessors.dm.LibrariesForLibs

// https://github.com/gradle/gradle/issues/15383#issuecomment-779893192
val libs = the<LibrariesForLibs>()

plugins {
    java
}

repositories {
    mavenCentral()
}

java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(libs.versions.java.get()))
    }
}

@Suppress("UnstableApiUsage")
testing {
    suites {
        getByName<JvmTestSuite>("test") {
            useJUnitJupiter(libs.versions.jupiter.get())
        }
    }
}