/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {

        Image {
            id: background1
            source: "python.jpg"
            width: 230; height: 228
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Tenha todas as configurações ao alcance de um clique.<br/>"+
                  "Os scrips do brazuca são escritos em python, sendo assim,<br/>"+
                  "você agilidade na hora de configurar e total controle.<br/>"+
                  "do que está sendo feito no seu sistema<br/>."                  
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background2
            source: "logoarch.png"
            width: 383; height: 321
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Nosso objetivo é fornecer o arch linux para todos.<br/>"+
                  "Um arch fácil de instalar e fácil de configurar.<br/>"+
                  
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }

}
