#ifndef ECLASS_H
#define ECLASS_H

#include <QObject>

class eclass : public QObject
{
    Q_OBJECT
public:
    explicit eclass(QObject *parent = 0);

    Q_INVOKABLE QString hello();
signals:

public slots:
    QString hello2();
    
public slots:
    
};

#endif // ECLASS_H
