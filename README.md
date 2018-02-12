# README

This started as a group project as part of the firehose project curriculum on 
this repository: https://github.com/the-initiators/the-initiators-chess repository.

When the group project ended multiple team members expressed interest in working
alone to complete the app so I started a new repository with the work we had 
completed as a team so I could continue working on this project without confusion 
from other team members work.

Stories to be completed:

[]Support Joining a game (Started by dorothyeves)
- Add a link to the page that lists the open seat games to join the game. 
- Have the action trigger the games#update method and change the current game’s black_player_id to the currently logged in user id.

[]List available games on the homepage (Started by dorothyeves)
- Any game that is missing a player should be listed out for the user to let other players know they can join the game.

[]Valid move for pawn (Started by ansonmela)
- First move, allowed to move 2
- All moves allowed to move 1
- Can’t capture vertically
- Up one, horizontal 1 to capture
- Don’t worry about 'en passant' - we can worry about that later

[]Call valid_move? when user tries to move pieces 
- The idea is to make it such that if a user tries to move a piece to an invalid position the move will fail. In reality, there’s a good chance this will expose pre-existing bugs in the code.

[]Hook up move_to! in controller
- This will mean when we go to capture a piece it will be pulled off the board.


[]Build turn based logic to keep track of turns
- Keep track of whose turn it is.
- After a move, change whose turn it is.
- Prevent the opposing player from moving when it's not their turn.
- (Optional) Indicate whose turn it is.

[]Determine check
- Build a method that returns a boolean (true/false) on the Game Model that indicates whether or not the current state of the game is in check.
- Note - This is NOT checkmate. Just regular check. We will do checkmate later.

[]Stalemate
- Determine if the game is in the state of a stalemate. A stalemate happens when a player cannot make a legal move without moving themself into check.
- Only implement the method on Game. Do not worry yet about the frontend / messaging to the user.
- Do not worry too much about performance here.
- Cannot start this until all valid_moves are merged.

[]Final check 
- Now that check? is completed. We should hook it up in the controller.
- If a user moves a piece so that the board is in check. A message should display on the screen (could use a flash message) letting them know that they are in check.

[]Checkmate 
- Build a method to determine if the state of the game is in checkmate. 

[]Prevent moving yourself into check 
- As a user I shouldn’t be allowed to move one of my own pieces, such that it places my own king in check.
