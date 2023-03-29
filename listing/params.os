#Использовать params

// oscript params.os --settings param.json

Парсер = Новый ПарсерАргументовКоманднойСтроки();
Парсер.ДобавитьИменованныйПараметр("--settings");

ПараметрыJson = ЧтениеПараметров.Прочитать(Парсер, АргументыКоманднойСтроки);


Для каждого Extension Из ПараметрыJson["Extension"]  Цикл

	Сообщить(Extension["-storage-name"]);
	Сообщить(Extension["-storage-link"]);
	Сообщить(Extension["-storage-user"]);
	Сообщить(Extension["-storage-pwd"]);

	
КонецЦикла;

