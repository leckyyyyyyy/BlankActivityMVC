<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <instantiate from="res/layout/activity_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/fragment/package-info-fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/package-info.java" />
    <instantiate from="src/app_package/manager/package-info-manager.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/manager/package-info.java" />
    <instantiate from="src/app_package/model/package-info-model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/package-info.java" />
    <instantiate from="src/app_package/network/package-info-network.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/network/package-info.java" />
    <instantiate from="src/app_package/util/package-info-util.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/package-info.java" />
    <instantiate from="src/app_package/view/package-info-view.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/package-info.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
