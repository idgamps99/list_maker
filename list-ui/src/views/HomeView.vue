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
import listService from '@/services/listService'

export default {
  data () {
    return {
      lists: []
    }
  },
  components: {
    ListCard
  },
  async mounted () {
    this.lists = await listService.fetchLists()
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
