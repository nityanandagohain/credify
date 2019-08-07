<template>
  <div class="home">
    <div id="greetings">
      <div class="greeting-div">
        <div class="columns is-mobile">
          <div class="column has-text-weight-bold">
            Hi,
            <span class="username">Pichu</span>
          </div>
          <div class="add-money-btn column has-text-right">
            <a href="/" class="add-money-link">+ Give Loan</a>
          </div>
        </div>
      </div>
    </div>
    <div id="all-loans">
      <div class="padding">
        <div class="balance-card card-one has-text-centered balance-card">
          <div class="columns">
            <div class="column">
              <span class="balance-amount wallet">Wallet Balance</span>
              <br />
              <span class="balance-coin">
                <img
                  src="https://cdn.worldvectorlogo.com/logos/dai-2.svg"
                  style="    margin-right: 20px; width: 32px;"
                />
              </span>
              <span class="balance-amount">{{this.balance}}</span>
            </div>
          </div>
        </div>
      </div>

      <div class="padding" v-for="i in notMyLoans" :key="i.id">
        <div class="balance-card card-one has-text-centered balance-card">
          <div class>
            <div class="columns">
              <div class="columns">
                <div class="column" style="    margin-left: 50px;">
                  <span class="big">9.8</span>
                  <br />
                  <span class="rate">Rating</span>
                </div>
              </div>
              <div class="column">
                <img
                  src="https://cdn.worldvectorlogo.com/logos/dai-2.svg"
                  style="width: 26px;    margin-right: 20px;"
                />
                <span class="loan-demand">{{Number(i.requested_amount) - Number(i.amount_recieved)}}</span>
                <div class="superb">
                  <span>Eth</span>
                  <span style="margin-left:10px; color: darkgrey;">{{i.borrower_address}}</span>
                </div>
              </div>
            </div>
            <div class="padding">
              <input
                class="input"
                type="number"
                v-model="form.parent_id[i.id]"
                placeholder="Text input"
                style="width:60%"
              />
              <a @click="lendALoan(i.id, form.parent_id[i.id])" class="button is-link">Give Loan</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {
  fetchAllProperties,
  setProvider,
  lendLoan,
  get_wallet_amount
} from "~/plugins/utils";
export default {
  components: {},
  async mounted() {
    // this.$router.push("test");
    // init Metamask
    await setProvider();
    // fetch all properties
    const properties = await fetchAllProperties();
    // this.posts = properties
    this.notMyLoans = properties.notMyLoans.reverse();
    console.log("not my loan", this.notMyLoans);
    // this.price = message

    // fetch wallet balance
    this.balance = await get_wallet_amount();
  },
  data() {
    return {
      notMyLoans: [],
      price_id: [],
      balance: 0,
      form: {
          parent_id: []
        }
    };
  },
  methods: {
    goToTakeLoan() {
      this.$router.push("/takeloan");
    },
    lendALoan(id, price) {
      lendLoan(id, price);
    }
  }
};
</script>

<style>
.superb {
  font-size: 14px;
  margin-top: 10px;
  font-weight: 400;
}
.loan-demand {
  font-size: 30px;
  font-weight: 900;
  margin-left: -10px;
}
.big {
  font-size: 40px;
  font-weight: 700;
}
.rate {
  font-weight: 700;
  color: darkgrey;
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
.add-money-link[data-v-00f45f4e] {
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
  color: black;
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
  font-size: 36px;
}
.card-one {
  background: linear-gradient(135deg, #fcdf8a 0%, #f38381 100%);
}
/* .card-two {
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
} */
.right-icon {
  font-size: 50px;
  margin-left: 50px;
}

#footer {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100vw;
  height: 8em;
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
.columns-normal {
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
</style>

