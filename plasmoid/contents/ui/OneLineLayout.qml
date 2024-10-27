import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.plasmoid

RowLayout {
    id: columnLayout
    Layout.alignment: Qt.AlignVCenter
    Layout.minimumHeight: oneLineLayout.Layout.minimumHeight
    Layout.minimumWidth: oneLineLayout.Layout.minimumWidth

    Text {
        id: label
        property int fontSize: {
        return (plasmoid.configuration.shouldUseDefaultThemeFontSize)
            ? PlasmaCore.Theme.defaultFont.pixelSize
            : plasmoid.configuration.configuredFontSize
        }

        text: root.oneLineTextContent
        color: PlasmaCore.Theme.textColor
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: fontSize
        Layout.minimumHeight: oneLineLayout.Layout.minimumHeight
    }

}
