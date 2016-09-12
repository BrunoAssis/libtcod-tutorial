#include "libtcod.hpp"
#include "actor.hpp"

Actor::Actor(int x, int y, int symbol, const TCODColor &color):
    x(x),y(y),symbol(symbol),color(color) {
}

void Actor::render() const {
    TCODConsole::root->setChar(x, y, symbol);
    TCODConsole::root->setCharForeground(x, y, color);
}
