<template>
  <div class="card-container">

    <AlbumHeader :title="list.title" />

    <AlbumCard
      v-for="album in filteredAlbums"
      :key="album.id"
      :album="album"
    />

  </div>
</template>

<script>
import albums from '../albums.json'
import lists from '../lists.json'
import AlbumHeader from '@/components/AlbumHeader.vue'
import AlbumCard from '@/components/AlbumCard.vue'

export default {
  components: {
    AlbumHeader,
    AlbumCard
  },
  data () {
    return {
      lists: lists,
      albums: albums,
      list: {},
      filteredAlbums: []
    }
  },
  methods: {
    getList () {
      const list = this.lists.find((list) => {
        return list.id === Number(this.$route.params.id)
      })
      return list
    },
    getFilteredAlbums () {
      const filteredAlbums = this.albums.filter((album) => {
        if (album.list_id === this.list.id) {
          return album
        }
      })
      return filteredAlbums
    }
  },
  mounted () {
    this.list = this.getList()
    this.filteredAlbums = this.getFilteredAlbums()
  }
}
</script>
