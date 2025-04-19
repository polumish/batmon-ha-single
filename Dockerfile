
FROM alpine:3.19

WORKDIR /app

# Встановлення залежностей
RUN apk add --no-cache python3 py3-pip bluez git build-base && \
    pip3 install --break-system-packages --no-cache-dir -r requirements.txt
# Копіюємо файли
COPY . .

RUN chmod +x addon_main.sh

# Запускаємо головний скрипт
CMD ["./addon_main.sh"]
