class Actor {
public:
    int x, y;
    int symbol;
    TCODColor color;

    Actor(int x, int y, int symbol, const TCODColor &color);
    void render() const;
};
