
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import cn.pc.controls

ApplicationWindow{
    id: appWin
    title:  "PcWang GIS Editor"
    // flags: Qt.FramelessWindowHint
    color: PcColors.grey_2

    function center(){
        x= (Qt.application.screens[0].desktopAvailableWidth - width)  * 0.5
        y= (Qt.application.screens[0].desktopAvailableHeight - height)  * 0.5
    }

    header: PcSystemBar{

    }

    // header: Rectangle{
    //     implicitHeight: PcStyles.header_implicit_height
    //     color: PcColors.indigo_5

    //     RowLayout{
    //         anchors.fill: parent
    //         anchors.rightMargin: PcStyles.margin
    //         anchors.leftMargin: 2 * PcStyles.margin

    //         PcAvatar{
    //             id: avatarSettings
    //             // image: PcFileHelper.getLocalFilePathOfResource("./images/pcwang.png")
    //             fontIcon: PcFontIcons.md_settings
    //             iconColor: PcColors.white
    //             border.width: 0
    //             onClicked:{
    //             }
    //         }

    //         PcText{
    //             Layout.fillWidth: true
    //             text: appWin.title
    //             font.pointSize: 13
    //             color: PcColors.white
    //         }

    //         PcAvatar{
    //             id: userAvatar
    //             image: PcFileHelper.getLocalFilePathOfResource("./images/pcwang.png")
    //             fontIcon: PcFontIcons.md_account_circle
    //             onClicked:{
    //                 if(!PcApplication.hasLogin()){
    //                     loginPanel.y = 120
    //                     loginPanel.open()
    //                 }
    //             }
    //         }
    //     }
    // }




    // PcLoginDialog{
    //     id: loginPanel
    //     visible: false
    //     z: 1024
    //     minWidth: 300
    //     maxWidth: 600
    //     modal: true
    //     closePolicy: modal ? Popup.CloseOnEscape : Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    // }

    // Rectangle{
    //     id: leftSidePanel
    //     width: 160
    //     color: PcColors.indigo_1
    //     anchors.top: parent.top
    //     anchors.bottom: parent.bottom
    //     ColumnLayout{
    //         anchors.fill: parent
    //         anchors.margins: PcStyles.margin
    //         spacing: PcStyles.spacing
    //         RowLayout{
    //             Layout.fillWidth: true
    //             spacing: PcStyles.spacing
    //             PcAvatar{
    //                 id: userAvatar
    //                 image: PcFileHelper.getLocalFilePathOfResource("./images/pcwang.png")
    //                 fontIcon: PcFontIcons.md_account_circle
    //                 onClicked:{
    //                     if(!PcApplication.hasLogin()){
    //                         loginPanel.visible = true
    //                         var pos = mapToItem(appWin.contentItem, userAvatar.width, userAvatar.height)
    //                         loginPanel.x = pos.x + 5
    //                         loginPanel.y = pos.y + 5
    //                         loginPanel.open()
    //                     }
    //                 }
    //             }
    //             ColumnLayout{
    //                 Layout.fillWidth: true
    //                 Layout.fillHeight: true
    //                 // PcButton{
    //                 //     Layout.fillWidth: true
    //                 //     flat: true
    //                 //     // outlined: true
    //                 //     text: PcApplication.user.trim() !== '' ? PcApplication.user : 'Sign In'
    //                 //     // color: "transparent"
    //                 //     // border.width: 0
    //                 //     // radius: 0
    //                 // }
    //                 // Text{
    //                 //     Layout.fillWidth: true
    //                 //     font.pointSize: 8
    //                 //     text: ""
    //                 //     visible: text.trim() !== ''
    //                 // }
    //             }

    //             PcAvatar{
    //                 Layout.alignment: Qt.AlignVCenter
    //                 fontIcon: PcFontIcons.md_add_circle
    //                 Layout.preferredWidth: 28
    //                 Layout.preferredHeight: 28
    //                 border.width: 0
    //             }
    //         }

    //         PcSeperator{
    //             Layout.fillWidth: true
    //             Layout.preferredHeight: 1
    //         }

    //         Item{
    //             Layout.fillHeight : true
    //         }
    //     }




    // }

    // Rectangle{
    //     anchors.top: parent.top
    //     anchors.bottom: parent.bottom
    //     anchors.left: leftSidePanel.right
    //     anchors.right: parent.right


    //     // GridLayout{
    //     //     anchors.centerIn: parent
    //     //     columns: 2
    //     //     PcAvatar{
    //     //         width: 100
    //     //         height: 100
    //     //         image: PcFileHelper.getLocalFilePathOfResource("./images/pcwang.png")

    //     //     }
    //     //     PcAvatar{
    //     //         width: 100
    //     //         height: 100
    //     //         image: PcFileHelper.getLocalFilePathOfResource("./images/seagull.png")

    //     //     }
    //     //     PcAvatar{
    //     //         width: 100
    //     //         height: 100
    //     //         image: PcFileHelper.getLocalFilePathOfResource("./images/seagull.png")

    //     //     }
    //     //     PcAvatar{
    //     //         width: 100
    //     //         height: 100
    //     //         image: PcFileHelper.getLocalFilePathOfResource("./images/pcwang.png")

    //     //     }
    //     // }
    // }




    Component.onCompleted: {
        center()
        PcApplication.appWin = appWin
    }
}
