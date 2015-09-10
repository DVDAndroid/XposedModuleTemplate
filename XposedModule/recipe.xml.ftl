<?xml version="1.0"?>
<recipe>

    <mkdir at="${escapeXmlAttribute(manifestOut)}/assets/"/>
    <mkdir at="${escapeXmlAttribute(projectOut)}/libs/"/>

    <copy from="root/libs/XposedBridge.jar"
          to="${escapeXmlAttribute(projectOut)}/libs/XposedBridge.jar"/>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <!-- no build.gradle changes - only a build sync -->
    <merge from="root/build.gradle.ftl" to="${escapeXmlAttribute(projectOut)}/build.gradle"/>

    <merge from="root/res/values/strings.xml.ftl"
           to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>

    <instantiate from="root/assets/xposed_init.ftl"
                 to="${escapeXmlAttribute(manifestOut)}/assets/xposed_init"/>

    <instantiate from="root/src/app_package/XposedMod.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${xposedModClass}.java"/>

    <open file="${escapeXmlAttribute(srcOut)}/${xposedModClass}.java"/>

</recipe>