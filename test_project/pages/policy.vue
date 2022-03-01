<template>
  <section>
    <Head />
    <Card />
    <button type="" id="btn" @click="popupClick">BTN</button>
    <section id="sample_dialog" class="popup_fixed popup_hide">
      <section class="popup_container">
        <div class="popup_header">HEAD</div>
        <div class="popup_content">CONTENT</div>
        <div class="popup_footer" data-align="right">FOOT</div>
      </section>
      <div class="popup_close"></div>
    </section>
  </section>
</template>
<style>
  @import "@/assets/popup.css";
</style>
<script>
import { isMobile } from 'mobile-device-detect'
import { Popup } from '@/assets/popup.js'
let popupBtn
export default {
  name: 'PolicyPage',
  head () {
    return {
      title: 'Policy',
      // htmlAttrs: {
      //   lang: this.$i18n.loadedLanguages[0]
      // },
      meta: [
        // hid is used as unique identifier. Do not use `vmid` for it as it will not work
        {
          hid: 'description',
          name: 'description',
          content: 'My custom description'
        }
      ]
    }
  },
  mounted () {
    console.log('policy', isMobile)
    popupBtn = new Popup({
      dom: document.querySelector('#sample_dialog')
    })
    // this.popupClick()
  },
  methods: {
    popupClick () {
      console.log('popupClick', this)
      popupBtn.show()
    }
  }
}
</script>
