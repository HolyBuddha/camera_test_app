# camera_test_app

Тестовое задание на вакансию Flutter-разработчик.

Необходимо создать небольшое приложение, которое будет брать изображение с камеры и отправлять его на хостинг изображений. Результатом работы приложения должна быть ссылка на изображение в вебе.

## Используемый стэк технологий
- Dart/Flutter: 2.19.2/3.7.4
- State manager: GetX
- Сервер для загрузки изображений: https://api.imgbb.com/
- Для запросов к API: Http
- Для получения фото: ImagePicker

## Экраны приложения

Главный экран, позволяет сделать фото по кнопке:

![Screenshot_1682332128](https://user-images.githubusercontent.com/89085993/233972357-1962a0f8-de49-489f-b8a0-1929be20dc99.png)



Экран камеры:

![Screenshot_1682332135](https://user-images.githubusercontent.com/89085993/233972374-c1808c88-1d8e-4363-afc6-e69c7b347b3e.png)



Экран отображения результатов, здесь фото загружается по ссылке с сервера, а при клике на url ссылка копируется в буфер обмена:

![Screenshot_1682332142](https://user-images.githubusercontent.com/89085993/233972394-d01eec66-efad-408c-a8c9-7adde7efa214.png)

