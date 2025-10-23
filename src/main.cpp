#include <QtGui>
#include <QApplication>
#include <QDialog>
#include <QLabel>

int main(int argc, char** argv)
{
    QApplication app(argc, argv);
    QDialog w;
    QLabel label(&w);
    label.setText("Hello World!");
    w.show();
    return app.exec();
}