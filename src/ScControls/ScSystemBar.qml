import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    id: systembar
    signal showSystemSettings()

    implicitHeight: ScStyles.header_implicit_height
    color: ScColors.grey_4

    RowLayout{
        anchors.fill: parent
        anchors.rightMargin: ScStyles.margin
        anchors.leftMargin: 2 * ScStyles.margin

        // ScAvatar{
        //     id: avatarSettings
        //     // image: ScFileHelper.getLocalFilePathOfResource("./images/pcwang.png")
        //     fontIcon: ScFontIcons.md_settings
        //     // iconColor: ScColors.grey_9
        //     border.width: 0
        //     onClicked:{
        //         systembar.changeSettings()
        //     }
        // }

        ScText{
            // Layout.fillWidth: true
            text: "Welcome to PCWang's GIS world !" //appWin.title
            font.pointSize: 13
            color: ScColors.grey_9
        }

        ScButton{
            leftIcon: ScFontIcons.md_settings
            text: "System"

            onClicked: systembar.showSystemSettings()

        }


        ScButton{
            leftIcon: ScFontIcons.md_grid_view
            text: "View"
            onClicked:{
                viewMenu.open()
            }
            Popup {
                id: viewMenu
                width: 200
                height: column.height + viewMenu.topPadding + viewMenu.bottomPadding
                y: parent.height + ScStyles.margin
                background: Rectangle{
                    border.width: 1
                    border.color: ScColors.grey_5
                    color: ScColors.grey_3
                    radius: 2
                }

                ColumnLayout{
                    id: column
                    width: parent.width
                    spacing: 1
                    ScButton{
                        leftIcon: ScFontIcons.md_database
                        text: "Spatial DB"
                        Layout.fillWidth: true
                        textAlignment: Text.AlignLeft
                    }

                    ScButton{
                        leftIcon: ScFontIcons.md_handyman
                        text: "ToolBox"
                        Layout.fillWidth: true
                        textAlignment: Text.AlignLeft
                    }
                }
            }
        }

        ScButton{
            leftIcon: ScFontIcons.md_newspaper
            text: "News"
        }

        ScButton{
            leftIcon: ScFontIcons.md_manage_accounts
            text: "Author"
        }

        // ScTextInput{

        // }


        Item{
            Layout.fillWidth: true
        }

        ScAvatar{
            id: userAvatar
            image: ScFileHelper.getLocalFilePathOfResource("./images/pcwang.png")
            fontIcon: ScFontIcons.md_account_circle
            onClicked:{
                if(!ScApplication.hasLogin()){
                    const loginPanel = Qt.createQmlObject(
                                         `
                                         import QtQuick
                                         import QtQuick.Controls
                                         import QtQuick.Layouts
                                         import cn.pc.controls

                                         ScLoginDialog{
                                         id: loginPanel
                                         visible: true
                                         modal: false
                                         minWidth: 300
                                         maxWidth: 600
                                         closePolicy: modal ? Popup.CloseOnEscape : Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
                                         }
                                         `,
                                         ScApplication.appWin.contentItem,
                                         "myDynamicSnippet"
                                         );
                    loginPanel.closed.connect(()=>{
                                                  loginPanel.destroy()
                                              } )
                }

            }
        }
    }
}