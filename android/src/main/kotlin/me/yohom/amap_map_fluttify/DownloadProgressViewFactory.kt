//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package me.yohom.amap_map_fluttify

import android.content.Context
import android.view.View
import android.util.Log
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry.Registrar
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class DownloadProgressViewFactory(private val registrar: Registrar) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    private val handlerMap = mapOf<String, (Registrar, Map<String, Any>, MethodChannel.Result) -> Unit>(
        "com.amap.api.maps.offlinemap.DownloadProgressView::setProgress" to { registrar, args, methodResult ->
            // args
            // jsonable arg
            val var1 = args["var1"] as Int
        
            // ref
            val refId = args["refId"] as Int
            val ref = HEAP_AmapMapFluttify[refId] as com.amap.api.maps.offlinemap.DownloadProgressView
        
            // print log
            println("fluttify-kotlin: com.amap.api.maps.offlinemap.DownloadProgressView@$refId::setProgress([\"var1\":$var1])")
        
            // invoke native method
            ref.setProgress(var1)
        
            // result
            methodResult.success("success")
        }
    )

    init {
        MethodChannel(registrar.messenger(), "me.yohom/amap_map_fluttify/com_amap_api_maps_offlinemap_DownloadProgressView").setMethodCallHandler { methodCall, methodResult ->
            val args = methodCall.arguments as? Map<String, Any> ?: mapOf()
            handlerMap[methodCall.method]?.invoke(registrar, args, methodResult)
                    ?: methodResult.notImplemented()
        }
    }

    override fun create(context: Context, id: Int, params: Any?): PlatformView {
        return object : PlatformView {
            private val view = com.amap.api.maps.offlinemap.DownloadProgressView(registrar.activity())

            // add to HEAP_AmapMapFluttify
            override fun getView(): View = view.apply { HEAP_AmapMapFluttify[id] = this }

            override fun dispose() {}
        }
    }
}