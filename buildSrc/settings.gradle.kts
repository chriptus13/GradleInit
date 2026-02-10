@file:Suppress("UnstableApiUsage")

pluginManagement {
    repositories {
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositories {
        mavenCentral()
    }
    versionCatalogs {
        create("libs") {
            // https://github.com/gradle/gradle/issues/15383#issuecomment-779893192
            from(files("../gradle/libs.versions.toml"))
        }
    }
}