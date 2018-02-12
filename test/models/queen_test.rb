require 'test_helper'

describe Queen do
<<<<<<< HEAD
  let (:queen) {Queen.create(x_position: 3, y_position: 3, color: "white")}
  let (:queen2) {Queen.create(x_position: 2, y_position: 8, color: "black")}
=======
  let (:game) { Game.create_game }
  let (:queen) { Queen.create(x_position: 3, y_position: 3, color: 'white', 
                game_id: game.id) }
  let (:queen2) { Queen.create(x_position: 6, y_position: 4, color: 'black', 
                game_id: game.id) }
>>>>>>> 66d5a4c1d8d788d33c5e3e7e0ff768534fa89e25

  it 'must load both queen pieces when a game is created' do
    assert_equal 2, Queen.where(game_id: game.id).length
  end
  
  it 'must include white pieces' do
    value(queen.color).must_equal 'white'
  end
  
  it 'must include black pieces' do
    value(queen2.color).must_equal 'black'
  end
  
  it 'must allow horizontal movements' do
<<<<<<< HEAD
    assert_equal true, queen2.queen_valid_move?(3, 8)
=======
    assert_equal true, queen2.queen_valid_move?(3, 4)
>>>>>>> 66d5a4c1d8d788d33c5e3e7e0ff768534fa89e25
  end
  
  it 'must not allow horizontal movements' do
    assert_equal false, queen2.queen_valid_move?(9, 8)
  end
  
  it 'must allow vertical movements' do
    assert_equal true, queen.queen_valid_move?(3, 5)
  end
  
  it 'must not allow vertical movements' do
    assert_equal false, queen2.queen_valid_move?(2, 9)
  end
  
  it 'must not allow non-diagonal movement in both directions in one turn' do
    assert_equal false, queen2.queen_valid_move?(3, 5)
  end
  
  it 'must allow diagonal moves' do
    assert_equal true, queen.queen_valid_move?(5, 5)
  end
  
end
