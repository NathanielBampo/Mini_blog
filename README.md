<div>
  <a href="https://rubyonrails.org">
    <img src="https://img.shields.io/badge/Rails-7.1.0-ff0000?logo=RubyonRails&logoColor=white&?style=for-the-badge"
    alt="Rails badge" />
  </a>
  <a href="https://rubyonrails.org">
    <img src="https://img.shields.io/badge/Ruby-3.1.2-ff0000?logo=Ruby&logoColor=white&?style=for-the-badge"
    alt="Rails badge" />
  </a>
</div>

#### "Без именный" - Небольшой код ля поддержки своих навыков в Rails

**Описание:**
НА данный момент просто некое подобие блога в котором можно оставлять свои мысли или идеи.(Проект в разработке)

### Важно!
1. Запуск команд производится в консоли вашей опреционой системы.

### Пошаговое руководство запуска приложения.

### Скачать репозиторий:

Перейдите в папку, в которую вы хотите скачать исходный код Ruby on Rails, и запустите:

```
$ git clone git@github.com:NathanielBampo/Mini_blog.git

```
```
$ cd Mini_blog
```

### Создание ключей

```
EDITOR=<ваш редактор> rails credentials:edit
```

Будет созданы файлы **master.key** и **credentials.yml.enc**

### Пропишите в файл *credentials.yml.enc* свои переменные окружения

```
EDITOR=<ваш редактор> rails credentials:edit
```

### Если возникнут ошибки.

Удалите файл credentials.yml.enc и пересоздайте командой выше

### Установка зависимостей

```
bundle install
```

### Запуск миграции

```
bundle exec rails db:create
```

```
bundle exec rails db:migrate
```

### Запуск приложения

```
rails s