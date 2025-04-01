export default {
  lists: [],
  async fetchLists () {
    if (this.lists.length === 0) {
      try {
        const res = await fetch('http://127.0.0.1:4567/lists')
        this.lists = await res.json()
      } catch (error) {
        console.error('Error fetching lists', error)
      }
    }
    return this.lists
  },
  getListById(id) {
    const list = this.lists.find((list) => {
        return list.id === id
      })
      return list
  }
}
