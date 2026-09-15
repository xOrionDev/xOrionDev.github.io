# Портфолио Orion Muhamadiev — как опубликовать

Статический сайт: только HTML/CSS/JS, без сборки и зависимостей.
Внешняя зависимость одна — шрифты Google Fonts.

## Структура

```
portfolio/
├── index.html            ← главная страница
├── cases/
│   ├── umedmall.html
│   ├── kk-service.html
│   ├── sms-gate.html
│   └── payvand.html
├── img/                  ← сюда скрины из Figma (см. umedmall-export-list.md)
├── assets/               ← пусто, для будущих файлов
├── cv.pdf                ← ПОЛОЖИТЬ СЮДА резюме (кнопка «CV» ведёт на него)
├── .nojekyll             ← нужен GitHub Pages, не удалять
└── README.md
```

## Публикация на GitHub Pages — 6 шагов

1. Зайти на [github.com](https://github.com) → **New repository**
2. Имя репозитория: **`orion-muhamadiev.github.io`** (подставьте свой username вместо `orion-muhamadiev` — так адрес будет `https://username.github.io` без хвоста `/portfolio`).
   Видимость: **Public**. «Add a README» не отмечать.
3. На странице пустого репозитория → **uploading an existing file**
4. Перетащить **содержимое** папки `portfolio` (сам `index.html`, папку `cases`, `img`, `assets`, файл `.nojekyll`) — не саму папку целиком
5. Внизу нажать **Commit changes**
6. **Settings → Pages** → Source: *Deploy from a branch* → Branch: **main**, папка **/(root)** → **Save**

Через 1–3 минуты сайт откроется по адресу `https://username.github.io`.
Проверить статус сборки: вкладка **Actions** в репозитории.

> Если `.nojekyll` не загрузился (GitHub иногда прячет файлы с точкой): **Add file → Create new file**, имя `.nojekyll`, содержимое пустое, Commit.

## Свой домен (когда будете готовы)

1. Купить домен (Namecheap, Reg.ru, Cloudflare — от ~$10/год)
2. У регистратора добавить записи:
   - `A` → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - `CNAME` для `www` → `username.github.io`
3. В репозитории: **Settings → Pages → Custom domain** → вписать домен → Save
4. Дождаться галочки и включить **Enforce HTTPS**

## Обновление сайта

Любой файл: открыть его в репозитории → карандаш → правки → Commit. Сайт пересоберётся сам за минуту.
Либо заново загрузить изменённые файлы через **Add file → Upload files**.

## Что доделать перед тем, как показывать людям

- [ ] Положить `cv.pdf` в корень (сейчас кнопки CV ведут в пустоту)
- [ ] Заменить `#` в ссылках Telegram и LinkedIn на реальные (секция «Контакты» в `index.html`)
- [ ] Выгрузить 12 PNG из Figma в `img/` по файлу `umedmall-export-list.md`
- [ ] Проверить кейсы KK Service, SMS-Gate, Payvand — они ещё не вычитаны так же, как UmedMall
- [ ] Решить, оставлять ли рабочую почту `@alif.tj` или завести личную
