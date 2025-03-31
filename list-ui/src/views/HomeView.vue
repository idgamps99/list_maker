<template>
  <div class="card-container">

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
  },
  mounted () {
    console.log(this.lists)
  }
}

</script>

<style>
.card-container {
  margin: 60px;
}
</style>
