# LJR Digital Studio — Site Oficial

Landing page premium, moderna e totalmente responsiva da agência LJR Digital Studio.

## 🚀 Como Executar

1. Abra a pasta do projeto
2. Abra o arquivo `index.html` diretamente no navegador
   — **ou** —
   Use o Live Server do VS Code para melhor experiência de desenvolvimento

## 📁 Estrutura do Projeto

```
PROJETO 01 - LRJ/
├── index.html              # Página principal (9 seções completas)
├── css/
│   ├── reset.css           # Reset cross-browser
│   ├── variables.css       # Design tokens (cores, espaços, transições)
│   ├── base.css            # Estilos base, container, botões, placeholders
│   ├── navbar.css          # Navbar inteligente
│   ├── hero.css            # Seção Hero
│   ├── about.css           # Seção Sobre
│   ├── services.css        # Seção Serviços
│   ├── portfolio.css       # Seção Portfólio
│   ├── process.css         # Seção Processo
│   ├── differentials.css   # Seção Diferenciais
│   ├── testimonials.css    # Seção Depoimentos
│   ├── leads.css           # Seção Formulário de Leads
│   ├── cta-footer.css      # CTA Final + Footer
│   ├── animations.css      # Scroll Reveal, Fade, Microinterações
│   └── responsive.css      # Media queries (1280 / 1024 / 768 / 480px)
└── js/
    ├── navbar.js           # Scroll detection, active link, mobile menu
    ├── animations.js       # IntersectionObserver para reveal
    ├── carousel.js         # Carrosseis (portfólio + depoimentos)
    ├── skills.js           # Animação barras de progresso
    ├── form.js             # Validação do formulário
    └── main.js             # Lazy loading, ripple, inicialização
```

## 🎨 Design System

- **Fonte:** Inter (Google Fonts)
- **Cor Principal:** #2563EB (Azul)
- **Fundo:** #FFFFFF / #F8FAFC
- **Texto:** #0F172A / #111827
- **Seções:** 160px de gap

## 📦 Como substituir os Assets

### Foto do Fundador (Hero)
Substitua o `div.placeholder-img--founder` por uma tag `<img>`:
```html
<img src="assets/images/fundador-hero.webp" alt="Luciano Junior, Fundador da LJR Digital Studio" loading="lazy">
```

### Foto do Fundador (Sobre)
Substitua o `div.placeholder-img--about` da mesma forma.

### Assinatura
Substitua o conteúdo de `.placeholder-img--signature` por uma `<img>` da assinatura PNG transparente.

### Projetos do Portfólio
Substitua cada `div.placeholder-img--project` por `<img>` dos screenshots dos projetos.

### Depoimentos
Substitua cada `div.placeholder-img--avatar` pela foto do cliente.
Preencha os `.placeholder-line` com o nome, cargo e texto reais.

### Foto CTA Final
Substitua `div.placeholder-img--cta` por `<img>`.

## 🔗 Integrações Futuras

### Formulário (form.js)
O formulário já está pronto para integração. Em `form.js`, substitua o bloco `setTimeout` (simulação) por um `fetch`:

```javascript
fetch('https://sua-api.com/leads', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(formData)
})
.then(res => res.json())
.then(data => { /* sucesso */ })
.catch(err => { /* erro */ });
```

### WhatsApp
Substitua o número `5577999999999` pelo número real em todos os links `wa.me`.

### Email
Substitua `contato@ljrdigitalstudio.com` pelo e-mail real.

## ✅ Checklist de Qualidade

- [x] 9 seções implementadas com fidelidade visual
- [x] Responsividade completa (1280 / 1024 / 768 / 480px)
- [x] SEO básico (meta tags, semântica, alt texts)
- [x] Navbar inteligente (transparente → sólida + mobile)
- [x] Scroll Reveal com IntersectionObserver
- [x] Barras de skill animadas
- [x] Linha do processo animada
- [x] Carrossel portfólio com drag/touch
- [x] Carrossel depoimentos com dots
- [x] Formulário com validação e máscara
- [x] Lazy loading
- [x] Ripple effect nos botões
- [x] Hover premium em todos os cards
- [x] Card flutuante animado (float)
- [x] Pulsação no botão WhatsApp
- [x] prefers-reduced-motion respeitado
- [x] Focus states acessíveis
- [x] HTML semântico (section, article, nav, header, footer)
- [x] Código limpo e comentado

---

**LJR Digital Studio** — Criando experiências digitais modernas.
