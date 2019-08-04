<template>
  <div id="take-loan">
    <div id="greetings">
      <div class="greeting-div">
        <div class="columns is-mobile">
          <div class="column has-text-weight-bold">
            Take
            <span class="username">Loan</span>
          </div>
        </div>
      </div>
    </div>

    <div class="padding">
      <div class="balance-card op card-one has-text-centered balance-card">
        <div class>
          <div class="columns cnt">
            <span class="balance-coin">
              <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" />
            </span>
            <span class="balance-amount">Loan Amount</span>
            <span class="balance-amount">$ 50</span>
          </div>
          <div class="columns cnt">
            <span class="balance-coin">
              <!-- <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" /> -->
            </span>
            <span class="balance-amount-new" style="    margin-right: -1px;">Total Interest@26%</span>
            <span class="balance-amount-new">$ 63</span>
          </div>
          <div class="columns cnt">
            <span class="balance-coin">
              <!-- <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" /> -->
            </span>
            <span class="balance-amount-new">Tenure</span>
            <span class="balance-amount-new">3 months</span>
          </div>
          <div class="columns cnt">
            <span class="balance-coin">
              <!-- <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" /> -->
            </span>
            <span class="balance-amount-new">EMI</span>
            <span class="balance-amount-new">$ 21/month</span>
          </div>
        </div>
      </div>
    </div>

    <div v-on:click="postAd" class="padding centra">
      <a class="button is-link" style="border-radius:20px">Request Loan</a>
    </div>
    <!-- 
      <div class="fa-3x" style="display: block; color: black;">
        <i class="fas fa-circle-notch fa-spin" ></i>
    </div>-->

    <div class="padding" v-if="showMe">
      <div class="columns-new">
        <div class="column">
          <span>
            Amount Requested:
            <span>{{this.myLoan.requested_amount}}</span>
          </span>
          <br>
          <span>Amount Received: {{this.myLoan.amount_recieved}}</span>
          <br>
          <span>Date: 04/08/2019</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {
  postProperty,
  web3,
  createALoan,
  fetchAllProperties
} from "~/plugins/utils";

export default {
  name: "takeloan",
  data() {
    return {
      price: 50,
      myLoans: null,
      myLoan: null,
      notMyLoans: null,
      showMe: false,
      loan_lenders: null,
      currentLenders: []
    };
  },
  async mounted() {
    // const properties = await fetchAllProperties();
    // this.myLoan = properties.myLoans[properties.myLoans.length - 1];
    // console.log("thisnsf ", this.myLoan.requested_amount);
    // this.showMe = !this.showMe;
  },
  methods: {
    async postAd() {
      await createALoan(50);
      const properties = await fetchAllProperties();
      // this.posts = properties
      console.log("props  coming in machu takeloan: ", properties);
      this.myLoan = properties.myLoans[properties.myLoans.length - 1];
      let x = [];
      this.loan_lenders = properties.loan_lender;
      // this.loan_lenders.forEach((item, index) => {
      //   if(item.id === this.myLoan.id) {
      //     x.push(item);
      //   }
      // })
      this.showMe = !this.showMe;
      this.currentLenders = x;
      console.log("hey get mem : ", x);
    }
  }
};
</script>

<style scoped>
.centra {
  display: flex;
  justify-content: center;
  color: white;
}
.large {
  font-size: 50px;
}
.balance-amount-new {
  font-size: 18px;
  margin-right: 3.5rem;
}
.columns-new {
  margin-left: -0.75rem;
  margin-right: -0.75rem;
  margin-top: -0.25rem;
  display: flex;
  justify-content: flex-start;
}
.address {
  font-size: 10px;
  font-weight: 100;
}

#greetings {
  padding: 1rem;
}
.cnt {
  align-items: center;
}
.hp {
  height: 5rem;
}
#all-loans {
  height: 400px;
  overflow-y: auto;
}
.dia {
  width: 62px;
  /* margin-left: 20px; */
  margin-right: 2rem;
}
.padlock {
  width: 32px;
  margin-left: 2.5rem;
}
#footer {
  position: fixed;
  bottom: 0.5;
  left: 0;
  width: 100%;
  background-color: white;
  /* position: fixed;
  bottom: 0;
  left: 0;
  width: 100%; */
}
.op {
  height: 11rem;
  opacity: 1;
}
.icon {
  align-items: center;
  display: inline-flex;
  justify-content: center;
  height: 3.5rem;
  width: 3.5rem;
}
.title {
  font-size: 1rem;
  color: #007bff;
  margin: 2px;
}
.greeting-div,
.services {
  margin-top: 10%;
}
.columns {
  margin-left: -0.75rem;
  margin-right: -0.75rem;
  margin-top: -0.25rem;
  display: flex;
  justify-content: space-between;
}
.columns:last-child {
  margin-bottom: -0.75rem;
}
.column {
  display: block;
  flex-basis: 0;
  flex-grow: 1;
  flex-shrink: 1;
}
.has-text-weight-bold {
  font-weight: 700 !important;
}
.add-money-btn {
  font-style: normal;
  font-weight: 700;
  font-size: 14px;
  line-height: 19px;
  text-align: center;
  color: #007bff;
}
.add-money-link {
  padding: 5px 10px;
  border: 1px solid #007bff;
  border-radius: 50px;
  background: #f1f0f0;
}
.add-money-btn a {
  color: #007bff;
}
a {
  color: #007bff;
  cursor: pointer;
  text-decoration: none;
}
.balance-card {
  color: #fff;
  padding-top: 1em;
  padding-bottom: 1em;
  /* background: linear-gradient(217.3deg, #fdc67e 54.82%, #f87898 98.16%); */
  mix-blend-mode: normal;
  box-shadow: 0 2px 20px #f0ecec;
  border-radius: 13px;
}
#drive-btns {
  display: flex;
  justify-content: space-evenly;
}

.padding {
  padding: 0.75rem;
}
.balance-amount {
  font-size: 24px;
  margin-right: 3rem;
  font-weight: 700;
}
.card-one {
  background: linear-gradient(135deg, #fcdf8a 0%, #f38381 100%);
}
.card-two {
  background: linear-gradient(135deg, #fad961 0%, #f78b30 100%);
}
.card-three {
  background: linear-gradient(135deg, #1bcedf 0%, #3b77ab 100%);
}
.card-four {
  background: linear-gradient(135deg, #f02fc2 0%, #966eda 100%);
}
.card-five {
  background: linear-gradient(135deg, #c53364 0%, #622774 100%);
}
.right-icon {
  font-size: 60px;
  font-weight: 700;
}
</style>
