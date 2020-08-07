#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QString>
#include <QKeyEvent>
#include <iostream>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

  refreshWord();
  refreshNumberOffailures();

  ui->background->setPixmap(QPixmap(QString::fromUtf8(":/background/Hangman01.png")));
}

void MainWindow::keyPressEvent(QKeyEvent *event){

    int numberOffailures = getnumberOffailures();
    if (numberOffailures == 11){
        return;
    }

    QString input = event->text().toUpper();
    if (!input.isEmpty()){
        keystrockes.append(input);
        refreshWord();
        refreshNumberOffailures();
        std::cout <<"Taste wurde gedrückt"
                  << input.toStdString()
                  << std::endl;
    }
}
int MainWindow::getnumberOffailures()
{
    int numberOffailures = 0;

    for(QString key : keystrockes){
        if (!toGuess.contains((key.at(0)))){
            numberOffailures++;
        }
    }
    return numberOffailures;
}
void MainWindow::refreshNumberOffailures()
{
    // Fehler Counter aktualisieren
    int numberOffailures = getnumberOffailures();
    ui->numberOffailures->setText(QString::number(numberOffailures));
    //GAlgen aktualisieren
    QVector<QString> images = {
        ":/background/Hangman01.png",
        ":/background/Hangman02.png",
        ":/background/Hangman03.png",
        ":/background/Hangman04.png",
        ":/background/Hangman05.png",
        ":/background/Hangman06.png",
        ":/background/Hangman07.png",
        ":/background/Hangman08.png",
        ":/background/Hangman09.png",
        ":/background/Hangman10.png",
        ":/background/Hangman11.png",
        ":/background/Hangman12.png",
    };
    ui->background->setPixmap(QPixmap(images.at(numberOffailures)));



}

void MainWindow::refreshWord()
{
    int numberOffailures = getnumberOffailures();
    QString output = "";
    for (int i = 0 ; i < toGuess.length(); i++){
        if (i != 0){
            output+= " ";
        }
        if (numberOffailures == 11 ||  keystrockes.contains(QString(toGuess[i]))){
            output+=toGuess[i];
        }
        else{
            output+= "_";
        }
    }
    ui->word->setText(output);
}

MainWindow::~MainWindow()
{
    delete ui;
}
