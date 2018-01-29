<#import "./shared_macros.ftl" as shared>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#if isInstantApp>
apply plugin: 'com.android.feature'
<#else>
  <#if isLibraryProject>
apply plugin: 'com.android.library'
  <#else>
apply plugin: 'com.android.application'
  </#if>
</#if>
<@kt.addKotlinPlugins />

<@shared.androidConfig hasApplicationId=isApplicationProject applicationId=packageName isBaseFeature=isBaseFeature hasTests=true canHaveCpp=true/>

dependencies {
    ${getConfigurationName("compile")} fileTree(dir: 'libs', include: ['*.jar'])

     // Support libraries
    implementation deps.support.app_compat
    implementation deps.support.v4
    implementation deps.support.design
    implementation deps.constraint_layout

    implementation deps.okhttp

    implementation deps.rvh
    implementation deps.okhttp_interceptor

    implementation deps.stetho
    implementation deps.stetho_okhttp3

    //utilcode， 可参考：https://github.com/Blankj/AndroidUtilCode
    implementation deps.utilcode

    <#if !improvedTestDeps>
    ${getConfigurationName("androidTestCompile")}('com.android.support.test.espresso:espresso-core:${espressoVersion!"+"}', {
        exclude group: 'com.android.support', module: 'support-annotations'
    })
    </#if>
    <@kt.addKotlinDependencies />
<#if isInstantApp>
  <#if isBaseFeature>
    <#if monolithicModuleName?has_content>
    application project(':${monolithicModuleName}')
    <#else>
    // TODO: Add dependency to the main application.
    // application project(':app')
    </#if>
  <#else>
    implementation project(':${baseFeatureName}')
  </#if>
<#else>
  <@shared.watchProjectDependencies/>
</#if>
}
