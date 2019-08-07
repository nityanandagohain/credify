pragma solidity ^0.5.7;

contract MicroTransaction {

    //Lender 
    struct Lender{
        uint256 amount;
        address lender_address;
        uint256 loanId;
    }

    uint256 public lenderId;

    mapping(uint256 => Lender) public lenders;
    

    //   Structure of a loan
    struct Loan{
        bool resolved;
        bool got_full_amount;
        address borrower_address;
        uint256 amount_recieved;
        uint256 requested_amount;
    }

    uint256 public loanId;

    mapping(uint256 => Loan) public loans;

    event NewLoan (
        uint256 indexed loanId
    );

    /**
    * @dev Put up an Loan request in the market
    * @param requested_amount amount the user wants to borrow
    */
    function createALoan(uint256 requested_amount) public {
        Loan memory loan = Loan(false, false, msg.sender, 0, requested_amount);

        // Persist `loanItem` object to the "permanent" storage
        loans[loanId] = loan;

        // emit an event to notify the clients
        emit NewLoan(loanId++);
    }

    /**
    * @dev Lend a Loan
    * @param _loanId id of the loan to lend
    * @param paying_amount amount that the lender wants to pay
    */
    function lendALoan(uint256 _loanId,uint256 paying_amount) public payable{
        // Retrieve `loanItem` object from the storage
        Loan storage loan = loans[_loanId];

        // Assert that property is active
        require(
            loan.resolved == false,
            "Loan Item is already resolved"
        );

        require(
            _loanId < loanId,
            "Enter proper loan Id"
        );

        
        require(
            (loan.requested_amount >= (loan.amount_recieved + paying_amount)),
            "Amount is more than required"
        );

        // create the lender object 
        lenders[lenderId] = Lender(paying_amount, msg.sender, _loanId);

        // store the lender object id to the Loan
        _sendFunds(loan.borrower_address, msg.value);

        lenderId++;

        loan.amount_recieved = loan.amount_recieved + paying_amount;

        // if the borrower has received the full amount
        if(loan.amount_recieved + paying_amount == loan.requested_amount){
            loan.got_full_amount = true;
        }
    }

  
    function _sendFunds (address beneficiary, uint256 value) internal {
        // address(uint160()) is a weird solidity quirk
        // Read more here: https://solidity.readthedocs.io/en/v0.5.10/050-breaking-changes.html?highlight=address%20payable#explicitness-requirements
        address(uint160(beneficiary)).transfer(value);
    }
}
