<template>
  <div class="card-container">
    <h2 class="header" >My Lists</h2>
    <div class="button-container">
      <div class="form-button">
        <button @click="toggleForm" type="button" class="btn btn-primary">{{ btnMessage}}</button>
      </div>
    </div>

    <div v-if="displayForm" class="new-list-form">
      <form @submit.prevent="submitNewList">
        <div class="form-group">
          <label for="listName">New List Title:</label>
          <input v-model="newListTitle" type="title" class="form-control" id="listTitle" placeholder="Enter title" autocomplete="off">
        </div>
        <button  type="submit" class="btn btn-primary submit-btn">Create</button>
      </form>
    </div>

    <div>
      <ListCard
        v-for="list in lists"
        :key="list.id"
        :list="list"
      />
    </div>
  </div>
</template>

<script>
import ListCard from '../components/ListCard.vue'
import listService from '@/services/listService'

export default {
  data () {
    return {
      lists: [],
      displayForm: false,
      newListTitle: '',
      btnMessage: 'Add List'
    }
  },
  components: {
    ListCard
  },
  methods: {
    toggleForm () {
      this.displayForm ? this.btnMessage = 'Add List' : this.btnMessage = 'Hide'
      this.displayForm = !this.displayForm
    },
    async submitNewList () {
      await this.sendList()
      this.newListTitle = ''
    },
    async fechtLists () {
      this.lists = await listService.fetchLists()
    },
    async sendList() {
      const body = {
        "title": this.newListTitle,
        "user_id": 1
      }

      const res = await fetch('http://127.0.0.1:4567/lists', {
        method: 'POST',
        body: JSON.stringify(body)
      })

      if (res.ok) {
        await this.fechtLists()
      }
    }
  },
  async mounted () {
    await this.fechtLists()
  }
}
</script>

<style>
.card-container {
  margin: 36px;
}

.header {
  text-align: center;
  margin-bottom: 60px;
}

.button-container {
  display: flex;
  justify-content: flex-end;
  margin: -10px 0px;
}

.form-button {
  margin: 18px;
}

.form-control {
  margin: 10px 0px;
}

.submit-btn {
  margin-top: 6px;
}

.new-list-form {
  margin: 18px;
}
</style>
