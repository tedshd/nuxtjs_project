<!-- Please remove this file from your project -->
<template>
  <footer>
    <nav>
      <nuxt-link :to="localePath('/')">首页</nuxt-link>
      <nuxt-link :to="localePath('/policy')">policy</nuxt-link>
      <nuxt-link :to="localePath('/tos')">tos</nuxt-link>
      <nuxt-link :to="localePath('/ip')">ip</nuxt-link>
      <nuxt-link
  v-for="locale in availableLocales"
  :key="locale.code"
  :to="switchLocalePath(locale.code)">{{ locale.name }}</nuxt-link>
    </nav>
  </footer>
</template>
<script>
// import('@/assets/common.css')
export default {
  name: 'FooterComponent',
  computed: {
    availableLocales () {
      return this.$i18n.locales.filter(i => i.code !== this.$i18n.locale)
    }
  }
}
</script>
