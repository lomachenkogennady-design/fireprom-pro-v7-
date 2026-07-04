#!/bin/bash
# FireProm PRO v7.0 — Deploy Script
# Репозиторий: https://github.com/lomachenkoge/fireprom-pro-v7-
# Запускайте из папки с распакованным fireprom-pro-v7.zip

set -e

REPO_URL="https://github.com/lomachenkoge/fireprom-pro-v7-.git"
REPO_NAME="fireprom-pro-v7-"

echo "🔥 FireProm PRO v7.0 — Deploy Script"
echo "====================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Ошибка: index.html не найден"
    echo "   Распакуйте fireprom-pro-v7.zip и запустите скрипт из той папки"
    exit 1
fi

echo "✅ Файлы проекта найдены"
echo ""

# Check git
if ! command -v git &> /dev/null; then
    echo "❌ Git не установлен"
    echo "   Установите: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git найден: $(git --version)"

# Initialize git if needed
if [ ! -d ".git" ]; then
    echo "📦 Инициализация git..."
    git init
    git branch -M main
fi

# Add remote
echo "🔗 Настройка remote..."
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"

# Add all files
echo "📁 Добавление файлов..."
git add .

# Commit
echo "💾 Commit..."
git commit -m "FireProm PRO v7.0 — Initial release

- Калькулятор металла (ОЦ, Х/К, Г/К)
- DXF-парсер с визуализацией
- Калькулятор дверей с опциями
- Генератор КП
- Прайс монтажа (20+ позиций)
- RFM-анализ клиентов
- CRM с экспортом
- PWA: offline, splash, install prompt
- Тёмная тема"

# Push
echo "🚀 Push на GitHub..."
git push -u origin main --force

echo ""
echo "====================================="
echo "✅ УСПЕХ! Проект загружен"
echo ""
echo "📍 Репозиторий: $REPO_URL"
echo "🌐 Сайт будет доступен через 1-2 минуты:"
echo "   https://lomachenkoge.github.io/fireprom-pro-v7-/"
echo ""
echo "⚠️  ВАЖНО: Включите GitHub Pages в настройках:"
echo "   Settings → Pages → Source: Deploy from a branch → main / root"
echo ""
