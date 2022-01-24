<template>
  <section>
    <Head />
    <div class="ip">IP: {{ip}}</div>
    <p>{{content}}</p>
  </section>
</template>

<script>
export default {
  name: 'IpPage',
  data () {
    return {
      ip: '',
      content: 'content'
    }
  },
  async asyncData ({ $axios }) {
    const ip = await $axios.$get('http://icanhazip.com')
    return { ip }
  },
  beforeMount () {
    // this.fetchSomething()
  },
  methods: {
    async fetchSomething () {
      const ip = await this.$axios.$get('http://icanhazip.com')
      this.ip = ip
    }
  }
}
</script>
