# 🐛 Guia de Debug do Odoo

## 1. Iniciar o Docker com Debug Ativado

```bash
docker compose up -d --build
```

Você verá a mensagem: `🐛 Debugger remoto ativado na porta 5678...`

## 2. Conectar o Debugger no VS Code

Abra a aba "Run and Debug" (Ctrl+Shift+D) → Clique em "Attach to Odoo (Debug)"

Ou pressione **F5** se a config estiver carregada.

Você verá no console: `Connected to debugger`

## 3. Como Debugar

### Adicionar Breakpoints
- Clique à esquerda do número da linha (no espaço vazio)
- Aparece um ponto vermelho
- Quando o código atingir esse ponto, a execução pausa

### Comandos de Debug
- **F10** → Step over (pula pro próximo comando)
- **F11** → Step into (entra dentro da função)
- **Shift+F11** → Step out (sai da função)
- **F5** → Continue (continua a execução)
- **Ctrl+Shift+D** → Debug console (ver variáveis)

### Ver Variáveis
No painel esquerdo, aba "Variables" mostra:
- Locals (variáveis locais)
- Globals (variáveis globais)
- Passe o mouse sobre variáveis no código pra ver valores

## 4. Exemplo Prático

Vamos debugar uma ação ao clicar no Odoo:

1. Abra o arquivo `/opt/odoo/addons/base/models/ir_model.py` (Ctrl+P, procure)
2. Clique numa linha interessante pra adicionar breakpoint
3. Clique na ação no Odoo web (http://localhost:8069)
4. O VS Code pausa na linha com breakpoint
5. Use F10/F11 pra ver a execução passo-a-passo
6. Debug console mostra variáveis: `self`, `record`, `values`, etc

## 5. Desabilitar Debug

Edite `docker-compose.yml` e remova/comente:
```yaml
environment:
  - ODOO_DEBUG=1
```

Depois: `docker compose up -d`

## 6. Troubleshooting

**"Connection refused on port 5678"**
- Aguarde 10s após iniciar o container (deixa o Odoo inicializar)
- Verifique: `docker compose logs odoo | head -20`

**"Breakpoint não funciona"**
- Certifique-se de que `justMyCode: false` está no `.vscode/launch.json`
- Reconstrua a imagem: `docker compose up -d --build`

**Debugger muito lento**
- Normal. Debug remoto é mais lento.
- Use `--noreload` ou pause apenas quando necessário.
