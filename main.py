# This Python file uses the following encoding: utf-8
from PySide6.QtWidgets import QApplication, QMainWindow
from PySide6.QtUiTools import QUiLoader
from PySide6.QtCore import QFile
from PySide6.QtQuick import QQuickView

import sys

		
class MyMainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        

if __name__ == "__main__":
    app = QApplication()
    view = QQuickView()

    view.setSource("main.qml")
    view.show()
    sys.exit(app.exec())