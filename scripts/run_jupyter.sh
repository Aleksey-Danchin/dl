#!/usr/bin/env bash

set -e  # падать при ошибке

IMAGE_NAME="my-jupyter"
BASE_IMAGE="jupyter/datascience-notebook"

# директория скрипта
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
LEARNING_DIR="$PROJECT_ROOT/learning"

echo "📁 Project dir: $PROJECT_ROOT"
echo "📚 Jupyter root: $LEARNING_DIR"

mkdir -p "$LEARNING_DIR"

# 1️⃣ Проверяем / скачиваем базовый образ
echo "⬇️ Pulling base image..."
docker pull $BASE_IMAGE

# 2️⃣ Собираем свой образ
echo "🔨 Building custom image..."
docker build -t $IMAGE_NAME "$SCRIPT_DIR"

# 3️⃣ Запускаем контейнер
echo "🚀 Starting Jupyter..."
docker run -it --rm \
  -p 8888:8888 \
  -v "$LEARNING_DIR":/home/jovyan/work \
  $IMAGE_NAME
