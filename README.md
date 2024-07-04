# Title : DegenGamingToken: A Customizable ERC20 Token for In-Game Store Transactions and Token Management.

# Description :

DegenGamingToken is an ERC20 token designed for in-game transactions. It includes customizable decimal places and allows the owner to mint tokens. Players can redeem tokens for in-game items via a built-in store by transferring tokens to the contract owner. The contract maintains a mapping of item names to their token costs and provides functions for players to burn tokens from their balances. The owner can set and manage item prices, and the contract ensures that players have sufficient balances before redeeming items. Events are emitted when tokens are minted or items are redeemed, enhancing traceability and transparency.

# Key Features :

   * Customizable Decimals: The token’s decimal places can be set during deployment, providing flexibility in token precision.

   * Owner-Only Minting: The contract owner can mint new tokens, enabling control over the token supply.

   * In-Game Store Integration: Supports an in-game store where tokens can be redeemed for items by players, with prices set and managed by the owner.

   * Redemption Mechanism: Players can redeem tokens for items by transferring the token cost to the contract owner, with real-time balance checks to ensure sufficient funds.

   * Universal Token Burning: Any token holder can burn their tokens, reducing their supply.

   * Item Management: Allows the owner to set and query item prices through a mapping of item names to token costs.

   * Event Emission: Emits events such as ItemRedeemed and Transfer for transparency and tracking of significant contract activities.

   * Security Checks: Includes balance checks to ensure players have enough tokens for redemption and burning actions.

# Step-by-Step Execution :

*Step 1:* Open Remix IDE

  1. Go to Remix IDE.

  2. Ensure you are using the "Solidity" environment.
     
*Step 2:* Create a New File

   1. In the "File Explorer" pane, click the "+" button to create a new file.
      
   2. Name your file lastavax.sol.
      
*Step 3:* Copy and Paste the Code

  1. Copy the entire Solidity code you provided.
     
  2. Paste it into the newly created lastavax.sol file. ( https://github.com/Shaguftaseraj/FINAL-3rd-/blob/main/avaxtoken.sol )
     
*Step 4:* Compile the Contract

  1. Click on the "Solidity Compiler" tab in the left sidebar (second icon from the top).
     
  2. Make sure the "Compiler" is set to version 0.8.26 or higher. If not, choose the appropriate version from the dropdown.
     
  3. Click "Compile lastavax.sol".
     
*Step 5:* Deploy the Contract

   1. Click on the "Deploy & Run Transactions" tab (third icon from the top in the left sidebar).
      
   2. Select the DegenGamingToken contract from the "Contract" dropdown.
      
  3. Enter the decimal value you want for your token in the "constructor arguments" input box.
     
  4. Click "Deploy".
     
  5. A Metamask prompt will appear (if connected), confirm the transaction to deploy the contract.
     
*Step 6:* Interact with the Contract

  **Mint Tokens**
  
     Under "Deployed Contracts", expand the DegenGamingToken instance.
     
     Find the mint function.
     
    Enter the address to mint tokens to and the amount of tokens to mint (in the smallest unit, considering decimals).
    
    Click "transact" and confirm the transaction.
    
  **Redeem Tokens for Items**
  
     Find the redeem function.
     
     Enter the item name for which the player wants to redeem tokens.
     
     Click "transact" and confirm the transaction.
     
  **Burn Tokens**
   
      Find the burn function.
      
      Enter the amount of tokens to burn.
      
      Click "transact" and confirm the transaction.
      
*Verify Contract Ownership*

  1. Use the owner function to verify the owner’s address.

# Authors :

  => Shagufta Seraj

   Github : https://github.com/Shaguftaseraj

# LICENSE :

This Project is licensed under the MIT License - see the link ( https://github.com/Shaguftaseraj/FINAL-3rd-/blob/main/LICENSE ) for details.

