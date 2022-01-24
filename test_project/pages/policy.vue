<template>
  <Head />
</template>
<style>
  @import "@/assets/common.css";
</style>
<script>
import { isMobile } from 'mobile-device-detect'
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
  }
}
</script>
