<?xml version="1.0"?>
<recipe>

	<dependency mavenUrl="de.robv.android.xposed:api:82"/>

    <mkdir at="${escapeXmlAttribute(manifestOut)}/assets/"/>

    <merge from="AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <merge from="build.gradle.ftl" to="${escapeXmlAttribute(projectOut)}/build.gradle"/>

    <merge from="res/values/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>

    <instantiate from="assets/xposed_init.ftl" to="${escapeXmlAttribute(manifestOut)}/assets/xposed_init"/>

    <instantiate from="src/app_package/XposedMod.java.ftl" to="${escapeXmlAttribute(srcOut)}/${xposedModClass}.java"/>

    <open file="${escapeXmlAttribute(srcOut)}/${xposedModClass}.java"/>

</recipe>