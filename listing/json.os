#Использовать json

ПарсерJSON = Новый ПарсерJSON();

СтрокаJSON = "{
|    ""firstName"": ""Иван"",
|    ""lastName"": ""Иванов"",
|    ""address"": {
|        ""streetAddress"": ""Московское ш., 101, кв.101"",
|        ""city"": ""Ленинград"",
|        ""postalCode"": 101101
|    },
|    ""phoneNumbers"": [
|        ""812 123-1234"",
|        ""916 123-4567""
|    ]
|}";

Объект = ПарсерJSON.ПрочитатьJSON(СтрокаJSON);
		
Для каждого Переменная Из Объект Цикл

	Сообщить(Переменная.Ключ+" "+Переменная.Значение);
	
КонецЦикла;

СтрокаДжейсон = ПарсерJSON.ЗаписатьJSON(Объект);

Сообщить(СтрокаДжейсон);


