<template>
  <p>
    <Header></Header>
    <p class="article_list">
      <ul>
        <li></li>
      </ul>
    </p>
    <Footer></Footer>
  </p>
</template>
<script>
import Header from 'header.vue'
import Footer from 'footer.vue'
export default {
  components: { Header, Footer },
  data () {
    return {
      list: []
    }
  },
  created () {
    this.getData()
  },
  methods: {
    getData () {
      this.$api.get('topics', null, r => {
        console.log(r)
      })
    }
  }
}
</script>
<style>
  .article_list {margin: auto;}
</style>