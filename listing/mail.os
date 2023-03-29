#Использовать InternetMail
#Использовать params

Перем ПараметрыJson;

Процедура ОтправитьПочту(Кому,Тема,ТекстПисьма)

	Если Кому.Количество() = 0 Тогда
		Сообщить("Не указаны получатели!, отмена отправки");
		Возврат;
	КонецЕсли;

	login = "pg1c";
	passw = "CgD-ab9-HCU-44f";
	mail = "pg1c@yandex.ru";

	Профиль = Новый ИнтернетПочтовыйПрофиль;

	Профиль.АдресСервераSMTP    = "smtp.yandex.ru";
	Профиль.ПользовательSMTP    = mail;//"someuser@mail.ru";
	Профиль.ПарольSMTP          = passw;//"somepass123";
	Профиль.ИспользоватьSSLSMTP = Истина;


	Профиль.АдресСервераPOP3    = "pop.yandex.ru";
	Профиль.ИспользоватьSSLPOP3 = Истина;
	Профиль.Пользователь        = mail;//""someuser@mail.ru";
	Профиль.Пароль              = passw;//"somepass123";

	Сообщение = Новый ИнтернетПочтовоеСообщение;

	Для каждого ТекПочта Из Кому Цикл
		Сообщение.Получатели.Добавить(ТекПочта);	
	КонецЦикла;

	Сообщение.ОбратныйАдрес.Добавить(mail);
	Сообщение.Отправитель = mail;
	Сообщение.Тема        = Тема;
	Сообщение.Тексты.Добавить(ТекстПисьма);
	//Сообщение.Тексты.Добавить(Текст, ТипТекстаПочтовогоСообщения.HTML);

	// Сообщение.Вложения.Добавить("C:/Пример вложения 1.docx");
	// Сообщение.Вложения.Добавить(
	//         Новый ДвоичныеДанные("C:/Пример вложения 2.docx"),
	//         "Пример вложения 2.docx"
	// );

	Почта = Новый ИнтернетПочта;
	Почта.Подключиться(Профиль, ПротоколИнтернетПочты.POP3);
	Почта.Послать(Сообщение, , ПротоколИнтернетПочты.SMTP);

КонецПроцедуры

Процедура локПрочитатьПараметры()
		
	Парсер = Новый ПарсерАргументовКоманднойСтроки();
	Парсер.ДобавитьИменованныйПараметр("--settings");
	
	ПараметрыJson = ЧтениеПараметров.Прочитать(Парсер, АргументыКоманднойСтроки);
	
	// Для Каждого Переменная Из ПараметрыJson Цикл
	// 	Сообщить(Переменная.Ключ + " " + Переменная.Значение);
	// КонецЦикла;
КонецПроцедуры

/////////////////////////////////////////////
//БЛОК ОСНОВНОЙ ПРОГРАММЫ
// /////////////////////////////////////////

локПрочитатьПараметры();
ОтправитьПочту(ПараметрыJson["mail"], "Пробное письмо оскрип","Тест письма +++");


