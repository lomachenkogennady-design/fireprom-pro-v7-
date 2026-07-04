# 🚀 Инструкция по загрузке на GitHub

## Вариант 1: Через браузер (с телефона/ПК)

1. Распакуйте **fireprom-pro-v7.zip**
2. Перейдите на https://github.com/lomachenkoge/fireprom-pro-v7-
3. Нажмите **"Add file"** → **"Upload files"**
4. Перетащите ВСЕ файлы из папки:
   - index.html
   - manifest.json
   - README.md
   - LICENSE
   - .gitignore
   - .github/workflows/deploy.yml
5. Commit message: `FireProm PRO v7.0`
6. Нажмите **"Commit changes"**

## Вариант 2: Через командную строку

### Linux/Mac:
```bash
# Распакуйте архив
cd fireprom-pro-v7
bash deploy.sh
```

### Windows:
```cmd
# Распакуйте архив
cd fireprom-pro-v7
deploy.bat
```

## ⚠️ Включение GitHub Pages

После загрузки файлов:

1. Перейдите в **Settings** (таб сверху)
2. В левом меню выберите **Pages**
3. **Source**: `Deploy from a branch`
4. **Branch**: `main` / `root`
5. Нажмите **Save**

Через 1–2 минуты сайт будет доступен:
**https://lomachenkoge.github.io/fireprom-pro-v7-/**
