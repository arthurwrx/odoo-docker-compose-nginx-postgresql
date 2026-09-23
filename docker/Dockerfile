FROM odoo:18

USER root

RUN pip install --break-system-packages debugpy

COPY docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh

USER odoo

ENTRYPOINT ["/entrypoint.sh"]
