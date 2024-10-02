# Calculadora Flutter

Uma calculadora simples desenvolvida com Flutter, utilizando **Provider** para gerenciamento de estado e **GoRouter** para navegação. O aplicativo suporta **Dark Mode** e **Light Mode**, permitindo que o usuário alterne entre os temas dinamicamente.

## Funcionalidades

- Operações básicas: adição, subtração, multiplicação, divisão.
- Botões especiais como: **√** (raiz quadrada), **±** (inverter sinal), **%** (porcentagem).
- Alternância entre **modo escuro** e **modo claro**.
- Interface responsiva para diferentes tamanhos de dispositivos.
- Gerenciamento de estado com **Provider**.
- Navegação usando **GoRouter**.

## Tecnologias Utilizadas

### Frontend
- **Flutter**: Framework principal para desenvolvimento do app.
- **Dart**: Linguagem de programação usada para desenvolver o app.

### Gerenciamento de Estado
- **Provider**: Usado para gerenciar o estado da calculadora e o tema (dark/light mode).

### Navegação
- **GoRouter**: Usado para gerenciar as rotas e navegação dentro do aplicativo.

## Como Rodar o Projeto

### Pré-requisitos:
- Ter o **Flutter** instalado. Você pode seguir as instruções de instalação no [site oficial do Flutter](https://flutter.dev/docs/get-started/install).
- Um editor de texto como **VSCode** ou **Android Studio**.

### Instalar dependências:
1. Clone este repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd seu-repositorio
    ```
3. Instale as dependências:
    ```bash
    flutter pub get
    ```

### Rodar o projeto:
1. Inicie o aplicativo em um emulador ou dispositivo físico conectado:
    ```bash
    flutter run
    ```

## Estrutura de Pastas

```bash
lib/
│
├── src/
│   ├── components/
│   │   ├── button.dart          # Componente de botão personalizado
│   │   └── display.dart         # Componente de display da calculadora
│   ├── provider/
│   │   ├── display_provider.dart # Gerenciamento de estado da calculadora
│   │   └── theme_provider.dart   # Gerenciamento do tema (dark/light mode)
│   └── view/
│       └── home_screen.dart      # Tela principal da calculadora
└── main.dart                     # Arquivo principal do app
