
FROM alpine:3.19

WORKDIR /app

# Встановлення залежностей
RUN apk add --no-cache python3 py3-pip bluez git build-base

COPY . .

RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt

RUN chmod +x addon_main.sh

# Запускаємо головний скрипт
CMD ["./addon_main.sh"]
