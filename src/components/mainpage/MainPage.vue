
<template>
  <!-- home inicio-section -->
  <v-card app>
    <v-layout class="main-layout">
      <v-main class="inicio-section-bg">

        <!-- home Nav-bar -->
        <v-app-bar id="navbar" class="main-navbar" color="rgba(255,255,255,0)">
          <v-img src="./../../assets/images/logo/logo.png" class="nav-logo">
          </v-img>
          <div class="main-nav-btns">
            <v-btn class="main-nav-btn">Início</v-btn>
            <v-btn class="main-nav-btn">Serviços</v-btn>
            <v-btn class="main-nav-btn">Sobre-Nós</v-btn>
            <v-btn class="main-nav-btn">Campanhas</v-btn>
            <v-btn class="main-nav-btn">Contatos</v-btn>
          </div>

            <div>
              <v-btn class="main-nav-btn-login">Log in</v-btn>
            </div>
            <v-divider :thickness="2" color="rgba(255,255,255)" vertical></v-divider>
            <div class="nav-btns-sign">
              <v-btn class="main-nav-btn-register">Registrar-se</v-btn>
            </div>
        </v-app-bar>
        <!--/ home Nav-bar -->

        <v-container class="inicio-section-container">
          <v-title class="inicio-section-title">
            Transformando conteúdos em negócios
          </v-title>
          <v-text class="inicio-section-text">
            Conectamos as marcas aos influenciadores ideais para promover seus produtos ou serviços, gerenciar
            campanhas em tempo real e obter insights valiosos sobre o desempenho de suas campanhas.
          </v-text>
        </v-container>
        <div class="inicio-section-btns">
          <v-btn class="btn-influencer">Sou influenciador</v-btn>
          <v-btn class="btn-empresa">Sou empresa</v-btn>
        </div>

        <v-card flat style="background-color: transparent !important;">
          <v-layout full-height="true" class="influenciadores">
            <div class="1">
              <v-img class="img-1" src="./../../assets/images/influencers/1.jpeg" cover />
            </div>
            <div class="2">
              <v-img class="img-2" src="./../../assets/images/influencers/2.jpeg" cover />
              <v-img class="img-3" src="./../../assets/images/influencers/3.jpeg" cover />
            </div>
            <div class="2">
              <v-img class="img-4" src="./../../assets/images/influencers/8.jpeg" cover />
              <v-img class="img-5" src="./../../assets/images/influencers/4.jpeg" cover />
            </div>
            <div class="3">
              <v-img class="img-6" src="./../../assets/images/influencers/6.png" cover style="padding-right: 10px;" />
              <v-img class="img-7" src="./../../assets/images/influencers/7.png" cover />
              <v-img class="img-8" src="./../../assets/images/influencers/5.jpeg" cover />
            </div>
          </v-layout>
        </v-card>
      </v-main>
    </v-layout>
  </v-card>

  <!--/ home inicio-section -->

  <!-- home serviços-section -->
  <v-layout class="main-servico-section">
    <v-container class="sub-servico-section">
      <v-sheet class="categorias-slideshow mx-auto" max-width="1000">
        <v-slide-group show-arrows>
          <v-slide-group-item v-slot="{ toggle }">
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/ninja.png" />
              Anime & Cartoon
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/mobile-phone.png" />
              Apps & Serviço
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon"
                src="./../../assets/images/emoji-categorias/rolling-on-the-floor-laughing.png" />
              Comédia
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/globe-showing-americas.png" />
              Curiosidades
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/woman-dancing.png" />
              Dança Profissional
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/studio-microphone.png" />
              Dublagem
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/performing-arts.png" />
              Entretenimento
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/coat.png" />
              Fashion/Moda
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/joystick.png" />
              Games
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/green-salad.png" />
              Gastronomia/Comida
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/mountain.png" />
              Life Skills (Comportamento na Vida)
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/disguised-face.png" />
              Make Pranks (Pegadinhas)
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/lipstick.png" />
              Makeup/Maquiagem
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon"
                src="./../../assets/images/emoji-categorias/beaming-face-with-smiling-eyes.png" />
              Motivação
            </v-btn>
            <v-btn class="ma-2" rounded @click="toggle">
              <v-img class="categorias-icon" src="./../../assets/images/emoji-categorias/musical-score.png" />
              Música
            </v-btn>
          </v-slide-group-item>
        </v-slide-group>
      </v-sheet>
      <v-container class="top-sub-servico-section">
        <v-text class="sub-title">
          TORNE MAIS FÁCIL
        </v-text>
        <v-title class="title">
          Recursos projetados para você
        </v-title>
        <v-text class="text">
          Centralize todas as suas necessidades de marketing em uma única plataforma, incluindo análises,
          campanhas, feed de notícias, bate-papo, carteira digital, colaborações e muito mais.
        </v-text>
      </v-container>
      <v-container class="servicos">
        <v-card class="servico-campanhas">
          <v-img class="servicos-img" src="./../../assets/images/servicos/icon.svg" />
          <v-title class="title">
            Campanhas
          </v-title>
          <v-text class="text">
            Encontre campanhas facilmente, efetue propostas, envie postagens para analises e receba por
            publicidade.
          </v-text>
        </v-card>
        <v-card class="servico-integracao">
          <v-img class="servicos-img" src="./../../assets/images/servicos/icon-1.svg" />
          <v-title class="title">
            Integrações
          </v-title>
          <v-text class="text">
            Integre sua conta com vários serviços populares e obtenha analytics detalhados do seu
            engajamento.
          </v-text>
        </v-card>
        <v-card class="servico-assessoria">

          <v-img class="servicos-img" src="./../../assets/images/servicos/icon-2.svg" />

          <v-title class="title">
            Assessoria
          </v-title>
          <v-text class="text">
            Tenha acompanhamento de uma equipe profissional em marketing e assessoria para lhe auxiliar e
            guiar em suas campanhas
          </v-text>
        </v-card>
      </v-container>
    </v-container>
  </v-layout>
  <!--/ home serviços-section -->

  <!-- home sobre-section -->
  <v-layout class="main-sobre-section">
    <v-container class="sub-sobre-section">
      <v-img class="sobre-img-section">
        <v-img class="overview " src="./../../assets/images/sobre/overview.svg" />
        <div class="redes-card">
          <v-img class="redes-data-1" src="./../../assets/images/sobre/redes-sociais.svg" />
          <v-img class="redes-data-2" src="./../../assets/images/sobre/gender.svg" />
        </div>

      </v-img>
      <v-container class="sobre-description-section">
        <div class="sobre-description-section-content">
          <v-text class="sub-title">
            PERCEPÇÃO DA AUDIÊNCIA
          </v-text>
          <v-title class="title">
            Obtenha analytics das redes sociais
          </v-title>
          <v-text class="text">
            Acesse informações detalhadas sobre seu engajamento, alcance e impressões, acompanhando de perto
            suas métricas e adaptando sua estratégia em tempo real.
          </v-text>
        </div>
        <v-btn class="sections-btns">Cadastrar-se</v-btn>
      </v-container>
    </v-container>
  </v-layout>
  <!--/ home sobre-section -->

  <!-- home redes-section -->
  <v-layout class="main-redes-section">
    <v-container class="sub-redes-section">
      <div class="redes-description-section">
        <v-text class="sub-title">
          GERENCIE REDES SOCIAIS SEM PROBLEMAS
        </v-text>
        <v-title class="title">
          Vincule suas redes sociais
        </v-title>
        <v-text class="text">
          Vincule e organize todas as suas redes sociais profissionais, defina valores customizados para cada uma
          delas
        </v-text>
        <v-btn class="sections-btns">Cadastrar-se</v-btn>
      </div>
      <v-img class="redes-img-section overflow-visible" height="480px">
        <v-container class="redes-cards-section ">
          <v-card class="redes-card-inlfuencers" width="400px" height="100px">
            <v-img class="redes-card-profile" src="./../../assets/images/influencers/6.png" cover />
            <v-img class="redes-card-avatar" src="./../../assets/images/redes/redes-icons/instagram.svg" />
            <div class="redes-card-info">
              <v-title>Lucas Lira</v-title>
              <v-text class="text">instagram.com.br/lucas_lira</v-text>
            </div>
            <div class="redes-card-options">
              <v-switch class="redes-switch" inset></v-switch>
              <v-img class="redes-points" src="./../../assets/images/redes/points.svg" />
            </div>
          </v-card>
          <v-card class="redes-card-inlfuencers" width="400px" height="100px">
            <v-img class="redes-card-profile" src="./../../assets/images/influencers/6.png" cover />
            <v-img class="redes-card-avatar" src="./../../assets/images/redes/redes-icons/twitter.svg" />
            <div class="redes-card-info">
              <v-title>Lucas Lira</v-title>
              <v-text class="text">twitter.com.br/lucas_lira</v-text>
            </div>
            <div class="redes-card-options">
              <v-switch class="redes-switch" inset></v-switch>
              <v-img class="redes-points" src="./../../assets/images/redes/points.svg" />
            </div>
          </v-card>
          <v-card class="redes-card-inlfuencers" width="400px" height="100px">
            <v-img class="redes-card-profile" src="./../../assets/images/influencers/6.png" cover />
            <v-img class="redes-card-avatar" src="./../../assets/images/redes/redes-icons/tik_tok.svg" />
            <div class="redes-card-info">
              <v-title>Lucas Lira</v-title>
              <v-text class="text">tiktok.com.br/lucas_lira</v-text>
            </div>
            <div class="redes-card-options">
              <v-switch class="redes-switch" inset></v-switch>
              <v-img class="redes-points" src="./../../assets/images/redes/points.svg" />
            </div>
          </v-card>
          <v-card class="redes-card-inlfuencers" width="400px" height="100px">
            <v-img class="redes-card-profile" src="./../../assets/images/influencers/6.png" cover />
            <v-img class="redes-card-avatar" src="./../../assets/images/redes/redes-icons/facebook.svg" />
            <div class="redes-card-info">
              <v-title>Lucas Lira</v-title>
              <v-text class="text">facebook.com.br/lucas_lira</v-text>
            </div>
            <div class="redes-card-options">
              <v-switch class="redes-switch" inset></v-switch>
              <v-img class="redes-points" src="./../../assets/images/redes/points.svg" />
            </div>
          </v-card>
          <div class="redes-card-icons">
            <div class="redes-icon">
              <v-img class="redes-icon-1" src="./../../assets/images/redes/redes-icons/twitter-t.svg" />
            </div>
            <div class="redes-icon">
              <v-img class="redes-icon-2" src="./../../assets/images/redes/redes-icons/tik_tok-t.svg" />
            </div>
            <div class="redes-icon">
              <v-img class="redes-icon-3" src="./../../assets/images/redes/redes-icons/instagram-t.svg" />
            </div>
          </div>
        </v-container>
      </v-img>
    </v-container>
  </v-layout>
  <!--/ home redes-section -->

  <!-- home feed-section -->
  <v-layout class="main-feed-section">
    <v-text class="sub-title">
      FEEDBACKS
    </v-text>
    <v-title class="title">
      Confiabilidade e resultados comprovados
    </v-title>
    <v-text class="text">
      Junte-se a mais de 636 criadores de todo o mundo
    </v-text>
    <v-sheet class="feedback-section mx-auto" max-width="1200">
      <v-slide-group show-arrows>
        <v-slide-group-item v-slot="{ toggle, }">
          <v-card class="feedback" @click="toggle">
            <div class="">
              <div class="feedback-nota">
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
              </div>
              <div class="feedback-content-text">
                <v-text>
                  Estou usando a Howhow pra gerenciar minhas campanhas de influenciador e tô adorando! A
                  plataforma é super fácil de usar e tem um monte de ferramentas incríveis para ajudar a
                  monitorar meu desempenho. Sem contar que as marcas parceiras que conheci através da
                  Howhow são top demais! Recomendo demais pra quem tá no mundo de redes sociais!
                </v-text>
              </div>
              <div class="feedback-avatar">
                <v-img class="avatar" src="./../../assets/images/influencers/2.jpeg" cover />
                <div class="feedback-owner">
                  <v-title>
                    Nayara Rios
                  </v-title>
                  <v-text class="text">
                    influenciador
                  </v-text>
                </div>
              </div>
            </div>
          </v-card>
        </v-slide-group-item>
        <v-slide-group-item v-slot="{ toggle, }">
          <v-card class="feedback" @click="toggle">
            <div class="">
              <div class="feedback-nota">
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
              </div>
              <div class="feedback-content-text">
                <v-text>
                  A Howhow é simplesmente a melhor plataforma de marketing de influência que eu já usei!
                  Além de ter um monte de marcas incríveis pra parcerias, a plataforma oferece insights
                  detalhados sobre meu engajamento, alcance e impressões.
                </v-text>
              </div>
              <div class="feedback-avatar">
                <v-img class="avatar" src="./../../assets/images/influencers/6.png" cover />
                <div class="feedback-owner">
                  <v-title>
                    Lucas Lira
                  </v-title>
                  <v-text class="text">
                    influenciador
                  </v-text>
                </div>
              </div>
            </div>
          </v-card>
        </v-slide-group-item>
        <v-slide-group-item v-slot="{ toggle, }">
          <v-card class="feedback" @click="toggle">
            <div class="">
              <div class="feedback-nota">
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
              </div>
              <div class="feedback-content-text">
                <v-text>
                  Gente, eu tô impressionada com a Howhow! Eu nunca tinha usado uma plataforma de marketing de influência
                  tão completa assim. As ferramentas de analytics automatizados são incríveis e me ajudaram a entender
                  melhor meu desempenho. Sem contar que a equipe de suporte é super prestativa e me ajudou em todas as
                  dúvidas que eu tive, vale muito a pena!
                </v-text>
              </div>
              <div class="feedback-avatar">
                <v-img class="avatar" src="./../../assets/images/influencers/8.jpeg" cover />
                <div class="feedback-owner">
                  <v-title>
                    Letícia Leone
                  </v-title>
                  <v-text class="text">
                    influenciador
                  </v-text>
                </div>
              </div>
            </div>
          </v-card>
        </v-slide-group-item>
        <v-slide-group-item v-slot="{ toggle, }">
          <v-card class="feedback" @click="toggle">
            <div class="">
              <div class="feedback-nota">
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
              </div>
              <div class="feedback-content-text">
                <v-text>
                  Amo muito todas as ferramentas da Howhow, plataforma super prática de mexer, isso me ajuda a ajustar
                  minha estratégia em tempo real e alcançar ainda mais sucesso.
                </v-text>
              </div>
              <div class="feedback-avatar">
                <v-img class="avatar" src="./../../assets/images/influencers/3.jpeg" cover />
                <div class="feedback-owner">
                  <v-title>
                    Gabriel falconi
                  </v-title>
                  <v-text class="text">
                    influenciador
                  </v-text>
                </div>
              </div>
            </div>
          </v-card>
        </v-slide-group-item>
      </v-slide-group>
    </v-sheet>
    <v-container class="feed-btn">
      <v-btn class="read-more-btn">Leia mais Feedbacks</v-btn>
    </v-container>
  </v-layout>
  <!--/ home feed-section -->

  <!-- home bootom-section -->
  <v-layout class="main-bottom-section">
    <v-container class="bottom-banner">
      <div class="banner-content">
        <v-title class="banner-title">
          Entre agora na Howhow
        </v-title>
        <v-text class="banner-text">
          Amado por milhares de artistas, músicos, podcasters, youtubers, games, tiktokers, criadores de conteúdo
          e marcas...
        </v-text>
      </div>
      <v-btn class="banner-btn">Cadastrar-se</v-btn>
    </v-container>
  </v-layout>
  <!--/ home bootom-section -->

  <!-- home footer-section -->
  <v-layout class="main-footer-section">
    <v-container class="sub-footer-section">
      <div class="footer-logo">
        <v-img src="./../../assets/images/logo/logo-degrade.svg" />
      </div>
      <div class="footer-links">
        <v-text class="links">Serviços</v-text>
        <v-text class="links">News</v-text>
        <v-text class="links">Marcas</v-text>
        <v-text class="links">FAQ</v-text>
        <v-text class="links">Ajuda</v-text>
      </div>
      <div class="footer-media-links">
        <v-img class="footer-facebook-icon" src="./../../assets/images/redes/redes-icons/facebook.svg" />
        <v-img class="footer-instagram-icon" src="./../../assets/images/redes/redes-icons/instagram.svg" />
        <v-img class="footer-linkedin-icon" src="./../../assets/images/redes/redes-icons/linkedin.svg" />
      </div>
    </v-container>
    <v-container class="privacy-section">
      <v-text class="copyright-area">Copyright Howhow. Inc © 2023 All Rights reserved</v-text>
      <div>
        <v-text class="terms-links">Termos de Uso</v-text>
        <v-text class="terms-links">Cookies</v-text>
        <v-text class="terms-links">Política de Privacidade</v-text>
      </div>
    </v-container>
  </v-layout>
  <!--/ home footer-section -->
</template>
