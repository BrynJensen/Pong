void intro() {
  background(olive);

  fill(white);
  textSize(100);
  text("Pong!", width/2, height/2 - 150);

  squareButton(width/2 - 175, height/2, 150, 75);
  squareButton(width/2 + 25, height/2, 150, 75);
}

void introClicks() {
  if (mouseX > width/2 - 175 && mouseX < width/2 - 25 && mouseY > height/2 && mouseY < height/2 + 75) {
    mode = GAME;
  }

  if (mouseX > width/2 + 25 && mouseX < width/2 + 175 && mouseY > height/2 && mouseY < height/2 + 75) {
    mode = GAME;
  }
}
