<template>
  <div>
    <div class="card" style="width: 18rem;">
      <div class="card-body">
        <h4 class="card-title">notMyLoans: {{propObject.amount_recieved}}</h4>
        <button class="btn btn-primary" v-on:click="displayDetails">View</button>
      </div>
    </div>
    <details-modal v-if="showModal" :propData="propObject"></details-modal>
  </div>
</template>

<script>
import DetailsModal from "~/components/detailsModal.vue";

export default {
  props: ["propObject"],
  data() {
    return {
      showModal: false
    };
  },
  components: {
    DetailsModal
  },
  methods: {
    displayDetails() {
      this.showModal = !this.showModal;
    }
  }
};
</script>
