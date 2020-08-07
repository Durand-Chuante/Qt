#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QVector>
#include <QKeyEvent>

namespace Ui{
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
protected:
    virtual void keyPressEvent(QKeyEvent *event);
private:
    Ui::MainWindow *ui;

    QString toGuess = "Mephisto";
    QVector<QString> keystrockes;

    int getnumberOffailures();
    void refreshWord();
    void refreshNumberOffailures();
};

#endif // MAINWINDOW_H
