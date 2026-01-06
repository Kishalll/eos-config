import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root
    
    // This tells the window how big to be based on your image size
    implicitWidth: timeTableImage.sourceSize.width
    implicitHeight: timeTableImage.sourceSize.height

    Image {
        id: timeTableImage
        anchors.centerIn: parent
        
        // REPLACE THIS PATH with the actual path to your image
        // Make sure to keep the "file://" prefix
        source: "file:///home/gigabyte/Documents/Sem 4/TT.jpg" 
        
        // This ensures the image doesn't stretch weirdly
        fillMode: Image.PreserveAspectFit
        
        // Optional: If your image is too huge, uncomment these lines to limit size:
        // width: 1000 
        // height: 600
    }
}
