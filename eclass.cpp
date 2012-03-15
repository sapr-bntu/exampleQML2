#include "eclass.h"

eclass::eclass(QObject *parent) :
    QObject(parent)
{
}

QString eclass::hello()
{
    return QString("hello qwe");
}

QString eclass::hello2()
{
    return QString("hello2 qwe");
}
