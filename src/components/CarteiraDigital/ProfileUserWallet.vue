<template>
  <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
        <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">
          <v-toolbar flat color="transparent"></v-toolbar>
          <v-row justify="space-around">
            <v-avatar size="200"><v-img src="https://cdn.vuetifyjs.com/images/john.png" alt="John"></v-img>
            </v-avatar>
          </v-row>
          <br><br><br>
          
          <v-card-text>
            <v-card color="white">
              <v-tabs
                v-model="tab"
                bg-color="transparent"
                align-tabs="center"
              >
                <v-tab value="dados" color="blue" prepend-icon="mdi-file-document-multiple-outline" stacked>Dados</v-tab>
                <v-tab value="test2" color="blue" prepend-icon="mdi-shield-account-outline" stacked>segurança</v-tab>
                <v-tab value="configurações" color="blue" prepend-icon="mdi-cog-outline" stacked>Configurações</v-tab>
                <v-tab value="comunidade" color="blue" prepend-icon="mdi-account-group-outline" stacked>Comunidade Howhow</v-tab>
                <v-tab value="ajuda" color="blue" prepend-icon="mdi-wrench-outline" stacked>Ajuda e Suporte</v-tab>

              </v-tabs>
              <v-card-text>

                <!-- Inicio Tab Dados -->
                <v-window v-model="tab">
                  <v-window-item value="dados">
                    <v-card class="mx-auto" max-width="500">
                      <v-card-item class="bg-white-darken-1">
                        <v-card-title>
                          <span class="text-h5">Alcides Sampaio</span>
                        </v-card-title>
                        <template v-slot:append>
                          <v-defaults-provider :defaults="{VBtn: {variant: 'text', density: 'comfortable',}}">
                            <v-btn icon="mdi-pencil"></v-btn>
                          </v-defaults-provider>
                        </template>
                      </v-card-item>

                      <v-list>
                        <v-list-item append-icon="mdi-message-text" prepend-icon="mdi-phone" title="(650) 555-1234"></v-list-item>
                        <v-divider inset></v-divider>

                        <v-list-item append-icon="mdi-message-text" prepend-icon="mdi-phone" title="(323) 555-6789"></v-list-item>
                        <v-divider inset></v-divider>

                        <v-list-item prepend-icon="mdi-email" title="mcbeal@example.com"></v-list-item>
                        <v-divider inset></v-divider>

                        <v-list-item prepend-icon="mdi-map-marker" title="Orlando, FL 79938"></v-list-item>
                      </v-list>

                    </v-card><br>
                  </v-window-item>
                  <!-- Fim Tab Dados -->

                  <v-window-item value="test2">
                    test2
                  </v-window-item>

                  <!-- Inicio Tab Configurações -->
                  <v-window-item value="configurações">
                    <v-card>
                      <v-toolbar dark color="white">
                        <v-toolbar-title>Configurações</v-toolbar-title>
                        <v-spacer></v-spacer>
                        <v-toolbar-items>
                          <v-btn variant="text" @click="dialog = false">
                            Salvar
                          </v-btn>
                        </v-toolbar-items>
                      </v-toolbar>

                      <v-list lines="two" subheader>
                        <v-list-subheader>Controles do usuário</v-list-subheader>
                        <v-list-item title="Filtragem de conteúdo" subtitle="Defina o nível de filtragem de conteúdo para restringir as promoções que podem ser exibidas"></v-list-item>
                        <v-list-item title="Senha" subtitle="Exigir senha para pagamento ou usar senha para tranferir a valores"></v-list-item>
                      </v-list>
                      <v-divider></v-divider>

                      <v-list lines="two" subheader>
                        <v-list-subheader>Em geral</v-list-subheader>
                        <v-list-item title="Notificações" subtitle="Notifique-me sobre todas as atualizações">
                          <template v-slot:prepend>
                            <v-checkbox v-model="notifications"></v-checkbox>
                          </template>
                        </v-list-item>
                        <v-list-item title="Som" subtitle="Aplicativos de atualização automática a qualquer momento. Cobranças de dados podem ser aplicadas">
                          <template v-slot:prepend>
                            <v-checkbox v-model="sound"></v-checkbox>
                          </template>
                        </v-list-item>
                        <v-list-item title="Adicionar widgets automaticamente" subtitle="Adicione widgets da tela inicial automaticamente">
                          <template v-slot:prepend>
                            <v-checkbox v-model="widgets"></v-checkbox>
                          </template>
                        </v-list-item>
                      </v-list>
                    </v-card>
                  </v-window-item>
                  <!-- Fim Tab Configurações -->
                          
                  <!-- Inicio Tab Comunidade -->
                  <v-window-item value="comunidade">
                    <v-card class="mx-auto" max-width="400">
                      <v-toolbar color="white" dark>
                        <v-toolbar-title>Comunidades</v-toolbar-title>
                        <v-btn icon><v-icon>mdi-magnify</v-icon></v-btn>
                      </v-toolbar>

                      <v-list lines="two">
                        <template v-for="(item, index) in items">
                          <v-list-subheader v-if="item.header" :key="item.header" inset> {{ item.header }}</v-list-subheader>
                          <v-divider v-else-if="item.divider" :key="index" inset></v-divider>
                          <v-list-item v-else :key="item.title" :prepend-avatar="item.avatar" ripple>
                            <template v-slot:title><div v-html="item.title"></div></template>
                            <template v-slot:subtitle><div v-html="item.subtitle"></div></template>
                          </v-list-item>
                        </template>
                      </v-list>
                    </v-card>
                  </v-window-item>
                  <!-- Fim Tab Comunidade -->

                  <!-- Inicio Tab Ajuda e Suporte -->
                  <v-window-item value="ajuda">
                    <v-card class="mx-auto" >
                      <v-layout>
                        <v-app-bar color="white" >
                          <v-app-bar-title>Perguntas Frequentes</v-app-bar-title>
                          <v-spacer></v-spacer>
                          <v-btn icon><v-icon>mdi-magnify</v-icon></v-btn>
                        </v-app-bar>

                        <v-main>
                          <v-container fluid>
                            <v-row dense>
                              <v-col v-for="n in 4" :key="n" cols="12">
                                <v-card
                                  :title="`Pergutas ${n}`"
                                  :subtitle="`Legenda para perguntas ${n}`"
                                  text="Lorem ipsum dolor sit amet consectetur, adipisicing elit.?"
                                ></v-card>
                              </v-col>
                            </v-row>
                          </v-container>
                        </v-main>
                      </v-layout>
                    </v-card>
                  </v-window-item>
                  <!-- Fim Tab Ajuda e Suporte -->

                </v-window>
              </v-card-text>
            </v-card>
          </v-card-text>
          </v-sheet>
        </v-container>
      </v-main>
    </v-layout>
</template>
<script>
//Import Components


  export default {
    data: () => ({
      tab: null,
      dialog: false,
        notifications: false,
        sound: true,
        widgets: false,

        items: [
        {
          header: 'Today',
        },
        { divider: true },
        {
          avatar: 'https://picsum.photos/250/300?image=660',
          title: 'Meeting @ Noon',
          subtitle: `<span class="font-weight-bold">Spike Lee</span> &mdash; I'll be in your neighborhood`,
        },
        {
          avatar: 'https://picsum.photos/250/300?image=821',
          title: 'Summer BBQ <span class="text-grey-lighten-1"></span>',
          subtitle: '<span class="font-weight-bold">to Operations support</span> &mdash; Wish I could come.',
        },
        {
          avatar: 'https://picsum.photos/250/300?image=783',
          title: 'Yes yes',
          subtitle: '<span class="font-weight-bold">Bella</span> &mdash; Do you have Paris recommendations',
        },
        {
          header: 'Yesterday',
        },
        { divider: true },
        {
          avatar: 'https://picsum.photos/250/300?image=1006',
          title: 'Dinner tonight?',
          subtitle: '<span class="font-weight-bold">LaToya</span> &mdash; Do you want to hang out?',
        },
        {
          avatar: 'https://picsum.photos/250/300?image=146',
          title: 'So long',
          subtitle: '<span class="font-weight-bold">Nancy</span> &mdash; Do you see what time it is?',
        },
        {
          header: 'Last Week',
        },
        { divider: true },
        {
          avatar: 'https://picsum.photos/250/300?image=1008',
          title: 'Breakfast?',
          subtitle: '<span class="font-weight-bold">LaToya</span> &mdash; Do you want to hang out?',
        },
        {
          avatar: 'https://picsum.photos/250/300?image=839',
          title: 'Winter Porridge <span class="text-grey-lighten-1"></span>',
          subtitle: '<span class="font-weight-bold">cc: Daniel</span> &mdash; Tell me more...',
        },
        {
          avatar: 'https://picsum.photos/250/300?image=145',
          title: 'Oui oui',
          subtitle: '<span class="font-weight-bold">Nancy</span> &mdash; Do you see what time it is?',
        },
      ],
    }),
    
  }
</script>
<style>
.dialog-bottom-transition-enter-active,
.dialog-bottom-transition-leave-active {
  transition: transform .2s ease-in-out;
}
</style>