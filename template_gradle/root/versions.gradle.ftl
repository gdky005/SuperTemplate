ext.deps = [:]
def versions = [:]
//versions.arch = hasProperty("ARCH_VERSION") ? getProperty("ARCH_VERSION") : "1.0.0-rc1"
versions.arch = "1.0.0"
versions.arch_paging = "1.0.0-alpha3"
versions.android_gradle_plugin = "3.0.0"
versions.anko_version = "0.10.1"
versions.arouter = "1.2.2"
versions.arouter_compiler = "1.1.3"
versions.banners = "1.4.10"
versions.butterknife = "8.8.1"
versions.constraint_layout = "1.0.2"
versions.dagger = "2.13"
versions.espresso = "3.0.1"
versions.floatmenu = "2.0.1"
versions.fresco = "1.3.0"
versions.junit = "4.12"
versions.kotlin_version = "1.1.51"
versions.material_refesh_layout = "1.3.0"
versions.networkbench_version = "2.7.1"
versions.okhttp = "3.9.1"
versions.photo_view = "2.1.3"
versions.photo_draweeview = "1.1.3"
versions.retrofit = "2.3.0"
versions.rvh = "2.9.30"
versions.support = "27.0.0"
versions.stetho="1.5.0"
versions.utilcode = "1.9.3"
versions.runner = "1.0.1"
versions.wave_swipe_refresh_layout = "1.6"
versions.zk_fresco = "1.0.0"
versions.systembartint = "1.0.3"
versions.multi_image_selector = "1.2"
versions.multi_image_selector_hx = "1.2.2"
versions.bugtags = "latest.integration"
ext.versions = versions


def support = [:]
support.app_compat = "com.android.support:appcompat-v7:$versions.support"
support.design = "com.android.support:design:$versions.support"
support.annotations = "com.android.support:support-annotations:$versions.support"
support.recyclerview = "com.android.support:recyclerview-v7:$versions.support"
support.cardview = "com.android.support:cardview-v7:$versions.support"
support.v4 = "com.android.support:support-v4:$versions.support"
support.core_utils = "com.android.support:support-core-utils:$versions.support"
ext.support = support



def espresso = [:]
espresso.core = "com.android.support.test.espresso:espresso-core:$versions.espresso"
espresso.contrib = "com.android.support.test.espresso:espresso-contrib:$versions.espresso"
espresso.intents = "com.android.support.test.espresso:espresso-intents:$versions.espresso"
ext.espresso = espresso

def lifecycle = [:]
lifecycle.runtime = "android.arch.lifecycle:runtime:$versions.arch"
lifecycle.compiler = "android.arch.lifecycle:compiler:$versions.arch"
//java8 默认包含 runtime 和 compiler
lifecycle.lifecycle_java8 = "android.arch.lifecycle:common-java8:$versions.arch"
lifecycle.extensions = "android.arch.lifecycle:extensions:$versions.arch"
lifecycle.arch_paging = "android.arch.paging:runtime:$versions.arch_paging"
lifecycle.room = "android.arch.persistence.room:runtime:$versions.arch"
lifecycle.room_compiler = "android.arch.persistence.room:compiler:$versions.arch"

ext.lifecycle = lifecycle



def deps = [:]
deps.android_gradle_plugin = "com.android.tools.build:gradle:$versions.android_gradle_plugin"
deps.kotlin_gradle_plugin = "org.jetbrains.kotlin:kotlin-gradle-plugin:$versions.kotlin_version"
deps.kotlin_gradle_extensions = "org.jetbrains.kotlin:kotlin-android-extensions:$versions.kotlin_version"
deps.constraint_layout = "com.android.support.constraint:constraint-layout:$versions.constraint_layout"
deps.utilcode = "com.blankj:utilcode:$versions.utilcode"
deps.okhttp = "com.squareup.okhttp3:okhttp:$versions.okhttp"
deps.okhttp_interceptor = "com.squareup.okhttp3:logging-interceptor:$versions.okhttp"


deps.stetho = "com.facebook.stetho:stetho:$versions.stetho"
deps.stetho_okhttp3 = "com.facebook.stetho:stetho-okhttp3:$versions.stetho"
deps.stetho_urlconnection = "com.facebook.stetho:stetho-urlconnection:$versions.stetho"
deps.stetho_urlconnection = "com.facebook.stetho:stetho-urlconnection:$versions.stetho"

deps.zk_fresco = "com.github.ZhuoKeTeam:WapperFrescoHelper:$versions.zk_fresco"

deps.butterknife = "com.jakewharton:butterknife:$versions.butterknife"
deps.butterknife_compiler = "com.jakewharton:butterknife-compiler:$versions.butterknife"
deps.anko = "org.jetbrains.anko:anko:$versions.anko_version"
deps.kotlin = "org.jetbrains.kotlin:kotlin-stdlib:$versions.kotlin_version"
deps.arouter = "com.alibaba:arouter-api:$versions.arouter"
deps.arouter_compiler = "com.alibaba:arouter-compiler:$versions.arouter_compiler"

deps.junit = "junit:junit:$versions.junit"

deps.retrofit2 = "com.squareup.retrofit2:retrofit:$versions.retrofit"
deps.retrofit2_gson = "com.squareup.retrofit2:converter-gson:$versions.retrofit"
deps.floatmenu = "com.yw.game.floatmenu:FloatMenu:$versions.floatmenu"

deps.agent_gradle_plugin = "com.networkbench.newlens.agent.android:agent-gradle-plugin:$versions.networkbench_version"
deps.nbs_newlens_agent = "com.networkbench.newlens.agent.android:nbs.newlens.agent:$versions.networkbench_version"

deps.photo_view = "com.github.chrisbanes:PhotoView:$versions.photo_view"

deps.fresco = "com.facebook.fresco:fresco:$versions.fresco"
deps.photo_draweeview = "me.relex:photodraweeview:$versions.photo_draweeview"
deps.wave_swipe_refresh_layout = "com.github.recruit-lifestyle:WaveSwipeRefreshLayout:$versions.wave_swipe_refresh_layout"
deps.material_refesh_layout = "com.cjj.materialrefeshlayout:library:$versions.material_refesh_layout"
deps.banners = "com.youth.banner:banner:$versions.banners"

deps.rvh = "com.github.CymChad:BaseRecyclerViewAdapterHelper:$versions.rvh"

deps.dagger = "com.google.dagger:dagger:$versions.dagger"
deps.dagger_support = "com.google.dagger:dagger-android-support:$versions.dagger"
deps.dagger_processor = "com.google.dagger:dagger-compiler:$versions.dagger"

deps.runner = "com.android.support.test:runner:$versions.runner"
deps.systembartint = "com.readystatesoftware.systembartint:systembartint:$versions.systembartint"

// 图片选择库 https://github.com/lovetuzitong/MultiImageSelector/blob/master/README_zh.md
deps.multi_image_selector = "com.github.lovetuzitong:MultiImageSelector:$versions.multi_image_selector"
// 上面的 multi_image_selector 不维护了，所以用这个：https://github.com/qq549631030/MultiImageSelector
deps.multi_image_selector_hx = "com.hx.multi-image-selector:multi-image-selector:$versions.multi_image_selector_hx"
deps.bugtags = "com.bugtags.library:bugtags-gradle:$versions.bugtags"
deps.bugtags_lib = "com.bugtags.library:bugtags-lib:$versions.bugtags"

deps.support = support
deps.lifecycle = lifecycle
ext.deps = deps




def build_versions = [:]
build_versions.min_sdk = 16
build_versions.target_sdk = 26
build_versions.build_tools = "26.0.2"
ext.build_versions = build_versions


def addRepos(RepositoryHandler handler) {
    handler.google()
    handler.jcenter()
    handler.mavenCentral()
    handler.maven { url 'https://jitpack.io' }
    //阿里的maven仓国内镜像，如果gradle下载很慢，建议使用该仓库
    handler.maven { url 'http://maven.aliyun.com/nexus/content/groups/public/' }
//    handler.maven { url 'https://maven.google.com'}

}

ext.addRepos = this.&addRepos