#!/bin/bash
set -e

if [ "$ODOO_DEBUG" = "1" ]; then
    echo "🐛 Debugger remoto ativado na porta 5678..."
    exec python3 -m debugpy --listen 0.0.0.0:5678 /opt/odoo/odoo-bin "$@"
else
    exec /opt/odoo/odoo-bin "$@"
fi
