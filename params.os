#Использовать params

// oscript params.os --settings param.json

Парсер = Новый ПарсерАргументовКоманднойСтроки();
Парсер.ДобавитьИменованныйПараметр("--settings");

ПараметрыJson = ЧтениеПараметров.Прочитать(Парсер, АргументыКоманднойСтроки);
		
Для каждого Переменная Из ПараметрыJson Цикл

	Сообщить(Переменная.Ключ+" "+Переменная.Значение);
	
КонецЦикла;