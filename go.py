#!/usr/bin/env python

# Go is a 2 player board game with simple rules. Two players alternate turns
# placing stones on a grid. If a stone is surrounded on 4 sides by stones of
# the opponent, it is captured. If a group of stones are surrounded, they are
# captured.
# See http://en.wikipedia.org/wiki/Rules_of_Go#Capture for a visual explanation.

# Below is an implementation of a Go board. Please write some code in the
# move() method to check for captures and output something when a capture
# occurs. The sample moves represent a capture of two black stones.

EMPTY = 0
BLACK = 1
WHITE = 2

class Board(object):
  def __init__(self):
    self.board = [[EMPTY] * 19 for _ in xrange(19)] # 2d 19x19 matrix of 0's

  def __str__(self):
    s = ''
    for row in self.board:
      if s:
        s += '\n'
      for sq in row:
        if sq:
          s += str(sq)
        else:
          s += '_'
    return s

  def move(self, color, row, col):
    self.board[row][col] = color
    other_color = (1 if color == 2 else 2)
    captured_left   = "Undertermined"
    captured_right  = "Undertermined"
    captured_top    = "Undertermined"
    captured_bottom = "Undertermined"

    for x in range(0, 18):
      for y in range(0, 18):
        if self.board[x][y] == 1 or self.board[x][y] == 2:
          print "Captured piece"

          # num = 1
          # while True:
          #   if self.board[x][y] == 0:
          #     break
          #   if self.board[x][y - num] == 0: captured_left = False
          #   if self.board[x][y - num] == other_color: captured_left = True
          #   num += 1
          #   if captured_left == True or captured_left == False:
          #     break

          # num = 1
          # while True:
          #   if self.board[x][y] == 0:
          #     break
          #   if self.board[x][y + num] == 0: captured_right = False
          #   if self.board[x][y + num] == other_color: captured_right = True
          #   num += 1
          #   if captured_right == True or captured_right == False:
          #     break

          # num = 1
          # while True:
          #   if self.board[x][y] == 0:
          #     break
          #   if self.board[x - num][y] == 0: captured_top = False
          #   if self.board[x - num][y] == other_color: captured_top = True
          #   num += 1
          #   if captured_top == True or captured_top == False:
          #     break

          # num = 1
          # while True:
          #   if self.board[x][y] == 0:
          #     break
          #   if self.board[x + num][y] == 0: captured_bottom = False
          #   if self.board[x + num][y] == other_color: captured_bottom = True
          #   num += 1
          #   if captured_bottom == True or captured_top == False:
          #     break

          # if captured_top == True and captured_right == True and captured_left == True:
          #   print "Captured piece"

b = Board()
b.move(BLACK, 4, 4)
b.move(BLACK, 4, 5)
b.move(WHITE, 3, 4)
b.move(WHITE, 3, 5)
b.move(WHITE, 4, 3)
b.move(WHITE, 4, 6)
b.move(WHITE, 5, 4)
b.move(WHITE, 5, 5)
print b