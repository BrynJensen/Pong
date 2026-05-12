void keyPressed() {
  if (key == 'w' || key == 'W' && mode == GAME) wkey = true;
  if (key == 's' || key == 'S' && mode == GAME) skey = true;
  if (keyCode == UP && mode == GAME) upkey = true;
  if (keyCode == DOWN && mode == GAME) downkey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W' && mode == GAME) wkey = false;
  if (key == 's' || key == 'S' && mode == GAME) skey = false;
  if (keyCode == UP && mode == GAME) upkey = false;
  if (keyCode == DOWN && mode == GAME) downkey = false;  
}
