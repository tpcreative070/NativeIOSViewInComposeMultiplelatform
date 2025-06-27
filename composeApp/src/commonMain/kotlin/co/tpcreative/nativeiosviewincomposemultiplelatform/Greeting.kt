package co.tpcreative.nativeiosviewincomposemultiplelatform

class Greeting {
    private val platform = getPlatform()

    fun greet(): String {
        return "Hello, ${platform.name}!"
    }
}