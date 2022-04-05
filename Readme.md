## Create an Escrow
Escrow is the use of a third party, which holds an asset or funds before they are transferred from one party to another.

Objective- Create an Escrow contract.

Task-

Create the following public state variables -

payer (address type) - To store the address of the person who is paying to the payee.
payee (address type) - To strore the address of the person who is receiving amount from payee.
thirdParty (address type) - To store the address of the third party who will release the fund to the payee.
amount (uint256) - The amount the payee wants to transfer.
Create the following functions -

constructor ( ) - It will take three arguments to initialize the payer, payee and amount. Initialize the thirdParty with msg.sender inside the constructor.
deposit ( ) -
a) It will take deposit sent by the payer only . If the payer is not the depositer then it should print "Sender must be the payer" . [Hint - Use require()]

b) If the deposit is done by the depositer then it will check whether the amount sent by the payer is less than or equal to contract balance or not. If it is not then print "Cant send more than escrow amount" .[Hint - Use require()]

release() -
a) It will check whether the amount is equal to the contract balance or not. If not it should print "cannot release funds before full amount is sent" . [Hint - Use require()]

b) If the balance is equal to amount. Then it will check whether the release ( ) by thirdParty or not. If not print "only thirdParty can release funds" . [Hint - Use require()]

c) If release( ) is called by the thirdParty. Then it will transfer the amount to the payee.

balanceOf() - To return the balance of the contract.