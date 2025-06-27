package co.tpcreative.nativeiosviewincomposemultiplelatform

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform