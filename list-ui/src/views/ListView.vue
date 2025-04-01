<template>
  <div class="card-container">

    <AlbumHeader :title="list.title" />

    <AlbumCard
      v-for="album in albums"
      :key="album.id"
      :album="album"
    />

  </div>
</template>

<script>
import listService from '@/services/listService'
import AlbumHeader from '@/components/AlbumHeader.vue'
import AlbumCard from '@/components/AlbumCard.vue'

export default {
  components: {
    AlbumHeader,
    AlbumCard
  },
  data () {
    return {
      lists: [],
      albums: [],
      list: {},
      filteredAlbums: []
    }
  },
  methods: {
    async fetchAlbums () {
      const url = `http://127.0.0.1:4567/lists/${this.$route.params.id}/albums`
      if (this.albums.length === 0 ) {
        try {
          const res = await fetch(url)
          this.albums = await res.json()
        } catch (error) {
          console.error('Error fetching lists', error)
        }
      }
      return this.albums
    }
  },
  async mounted () {
    this.lists = await listService.fetchLists()
    this.list = await listService.getListById(Number(this.$route.params.id))
    this.albums = await this.fetchAlbums()
  }
}
</script>
