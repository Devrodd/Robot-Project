# 🤖 Projeto Final – Masterclass Qazando: Automação com Robot Framework

Este repositório é o meu projeto final da **Masterclass Qazando**.  
Eu construí a automação **do zero**, configurei o ambiente, criei a estrutura do projeto e implementei os primeiros testes para validar a execução inicial.

---

## 🎯 Objetivo
Garantir a execução de um fluxo inicial de automação que:
- Acesse a **URL base**: https://certiqa-qazando.com/
- Valide o título da página
- Gere dados fake (nome e email) para uso em testes
- Produza relatórios padrão do Robot Framework (log.html e report.html)

---

## 🧰 Tecnologias e bibliotecas
- **Python 3.13**
- **Robot Framework 7.3.2**
- **SeleniumLibrary** (UI Web com Chrome)
- **FakerLibrary** (geração de dados falsos)
- *Selenium Manager* (drivers de navegador gerenciados automaticamente pelas libs mais novas do Selenium)

---

## 📂 Estrutura do projeto
```
robot-project/
├── resources/
├── tests/
│   ├── faker.robot       # Gera nome e email falsos
│   └── homepage.robot     # Abre a URL base e valida o título
├── results/               # Relatórios de execução (gerados automaticamente)
├── requirements.txt
└── README.md 
```

---

## ▶️ Como rodar localmente

### 1) criar (e ativar) o ambiente virtual
```bash
python -m venv .venv
# Windows:
.venv\Scripts\activate
# Linux/Mac:
# source .venv/bin/activate
```

### 2) instalar dependências
```bash
pip install -r requirements.txt
```

### 3) executar os testes
```bash
robot -d results tests/
```

### 4) abrir relatórios
- `results/report.html` → resumo
- `results/log.html` → detalhes passo a passo

---

## ✅ Testes implementados

### 1) tests/faker.robot
- Gera nome e email usando FakerLibrary
- Loga os valores para visualização no log.html

### 2) tests/homepage.robot
- Abre o Chrome
- Visita https://certiqa-qazando.com/
- **Validação**: uso `Title Should Contain    CertiQA Academy` para ser resiliente a pequenas mudanças
- Captura screenshot e fecha o navegador

---

## 🧭 Passo a passo do que eu fiz (diário curto)

1. Instalei Python 3.13 e conferi `python --version`.
2. Criei a pasta do projeto e o venv: `.venv`.
3. Instalei Robot Framework, SeleniumLibrary e FakerLibrary via `requirements.txt`.
4. Modelei a estrutura (`tests`, `resources`, `results`).
5. Escrevi `faker.robot` (geração de dados) e `homepage.robot` (navegação + validação).
6. Ajustei encoding dos `.robot` para UTF-8 sem BOM (para evitar erros de parsing).
7. Executei com `robot -d results tests/` e validei os relatórios.
8. Criei este README.md com instruções claras para reproduzir.
9. Inicializei o Git, fiz o primeiro commit e subi no GitHub.
10. Deixei pronto como projeto final da masterclass.

---

## 🧪 Resultado esperado (exemplo)
```
==============================================================================
Tests.Faker                                                           | PASS |
Tests.Homepage                                                        | PASS |
------------------------------------------------------------------------------
Tests                                                                 | PASS |
2 tests, 2 passed, 0 failed
==============================================================================
```

---

## 🔗 Repositório

Este projeto está hospedado em: https://github.com/Devrodd/Robot-Project
