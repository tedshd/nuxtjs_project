<!-- Please remove this file from your project -->
<template>
  <header>
    <h1>Title</h1>
    <div class="card">
    <div>{{ $t('title') }}</div>
    <div class="title">{{title}}</div>
    <div class="desc">{{desc}}</div>
  </div>
  </header>
</template>
<style>
body {
  background: pink;
}
</style>
<script>
// import('@/assets/common.css')
import { isMobile } from 'mobile-device-detect'
export default {
  name: 'HeaderComponent',
  data () {
    return {
      title: this.$i18n.t('title'),
      desc: 'desc'
    }
  },
  beforeMount () {
    console.log('tag', this)
    this.go()
    console.log('isMobile', isMobile)
  },
  methods: {
    go () {
      console.log('go', this.$i18n.loadedLanguages[0])
    }
  }
}
</script>
