#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath(QGuiApplication::applicationDirPath());
    engine.addImportPath("./");
    // qDebug() << QGuiApplication::applicationDirPath();
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
                     &app, []() { QCoreApplication::exit(-1); },
    Qt::QueuedConnection);
    engine.loadFromModule("PCWangEditor", "Main");

    return app.exec();
}
