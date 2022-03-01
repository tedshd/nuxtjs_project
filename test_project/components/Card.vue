<!-- Please remove this file from your project -->
<template>
  <div class="card">
    <div class="title">Title</div>
    <div class="desc">desc</div>
    <button type="" id="btn_card" @click="popupClick">card BTN</button>
    <section id="sample_dialog_card" class="popup_fixed popup_hide">
      <section class="popup_container">
        <div class="popup_header">card HEAD</div>
        <div class="popup_content">card CONTENT</div>
        <div class="popup_footer" data-align="right">card FOOT</div>
      </section>
      <div class="popup_close"></div>
    </section>
  </section>
  </div>
</template>
<style>
@import "@/assets/popup.css";
</style>
<style scoped>
@import "@/assets/card.css";
</style>
<script>
import { Popup } from '@/assets/popup.js'
let popupBtn
export default {
  name: 'CardComponent',
  mounted () {
    console.log('mounted', '')
    popupBtn = new Popup({
      dom: document.querySelector('#sample_dialog_card')
    })
  },
  methods: {
    popupClick () {
      console.log('popupClick', this)
      popupBtn.show()
    }
  }
}
</script>
