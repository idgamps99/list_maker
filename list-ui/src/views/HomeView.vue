<template>
  <div class="card-container">
    <h2 class="header" >My Lists</h2>
      <ListComponent
        v-for="list in lists"
        :key="list.id"
        :list="list"
      />

  </div>
</template>

<script>
import ListComponent from '../components/ListComponent.vue'
import lists from '../lists.json'

export default {
  data () {
    return {
      lists: lists
    }
  },
  components: {
    ListComponent
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
