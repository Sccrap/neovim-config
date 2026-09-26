
# ⚡ Neovim Configuration

Быстрая, модульная и минималистичная конфигурация Neovim на Lua, ориентированная на удобство разработки, чистоту интерфейса и производительность.

---

## ✨ Особенности

- 🚀 **Быстрый старт**: оптимизированная загрузка плагинов и минимальный оверхед.
- 🌳 **Treesitter**: расширенная подсветка синтаксиса и парсинг кода.
- 🔍 **Telescope**: быстрый нечеткий поиск файлов, текста (grep), буферов и справок.
- 📁 **Файловый менеджер**: удобная навигация по дереву проекта.
- 🎨 **Эстетика**: аккуратная цветовая схема с поддержкой truecolor и кастомная строка состояния.
- 💬 **Discord Rich Presence**: интеграция статуса активности в редакторе.

---

## 📋 Требования

Перед установкой убедитесь, что в системе установлены:

- **Neovim** $\ge$ `0.9.0`
- **Git**
- **C-компилятор** (`gcc` или `clang`) — для сборки парсеров Treesitter
- [ripgrep](https://github.com/BurntSushi/ripgrep) — для быстрого поиска текста через Telescope
- [fd](https://github.com/sharkdp/fd) — для оптимизированного поиска файлов
- Любой [Nerd Font](https://www.nerdfonts.com/) (например, *JetBrainsMono Nerd Font*) — для корректного отображения иконок

---

## 📦 Установка

### 1. Бэкап существующей конфигурации (рекомендуется)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup

```

### 2. Клонирование репозитория

```bash
git clone [https://github.com/Sccrap/neovim-config.git](https://github.com/Sccrap/neovim-config.git) ~/.config/nvim

```

### 3. Запуск

Запустите Neovim:

```bash
nvim

```

При первом запуске автоматически установятся менеджер пакетов и все зависимости. Перезапустите редактор после завершения процесса.

---

## 🗂 Структура проекта

```text
~/.config/nvim
├── init.lua          # Точка входа в конфигурацию
└── lua/
    ├── core/         # Базовые настройки (опции, бинды, автокоманды)
    │   ├── options.lua
    │   └── keymaps.lua
    └── plugins/      # Конфигурация и спецификации плагинов

```

---

## ⌨️ Основные горячие клавиши

> **Leader key:** `Space` (Пробел)

| Сочетание | Режим | Действие |
| --- | --- | --- |
| `<leader>ff` | Normal | Поиск файлов по имени (Telescope) |
| `<leader>fg` | Normal | Поиск по содержимому (Live Grep) |
| `<leader>fb` | Normal | Список открытых буферов |
| `<leader>e` | Normal | Открыть / закрыть файловый менеджер |
| `<leader>w` | Normal | Сохранить текущий файл |
| `<leader>q` | Normal | Выйти из буфера / окна |
| `jk` | Insert | Быстрый выход в Normal mode |

---

## 🧩 Ключевые плагины

* [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter?utm_source=gemini) — парсинг и продвинутая подсветка синтаксиса
* [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim?utm_source=gemini) — интерактивный fuzzy finder
* [andweeb/presence.nvim](https://github.com/andweeb/presence.nvim?utm_source=gemini) — статусная интеграция с Discord

