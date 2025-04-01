<template>
  <div class="card-container">
    <h2 class="header" >My Lists</h2>
      <ListCard
        v-for="list in lists"
        :key="list.id"
        :list="list"
      />
  </div>
</template>

<script>
import ListCard from '../components/ListCard.vue'

export default {
  data () {
    return {
      lists: []
    }
  },
  components: {
    ListCard
  },
  methods: {
    async getLists () {
      const res = await fetch('http://127.0.0.1:4567/lists')
      const json = await res.json()
      return json
    }
  },
  async mounted () {
    this.lists = await this.getLists()
  }
}
</script>

<style>
.card-container {
  margin: 60px;
}

.header {
  text-align: center;
  margin-bottom: 60px;
}
</style>
