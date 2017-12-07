class Krug {
    float x, y, s;
    Krug(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;
    }

    void draw() {
        ellipse(this.x, this.y, this.s, this.s);
    }

    void right(float _s) {
        this.x += 2;
        this.s -= 1;
    }
}

Krug[] k_array;

void setup() {
    size(600, 600);
    k_array = new Krug[70];
    for (int i = 0; i < 70; i++) {
        k_array[i] = new Krug(random(width), random(height), 60);
    }
}

void draw() {
    background(220, 200, 20);
    fill(220, 40, 40);
    for (int i = 0; i < 70; i++) {
        k_array[i].draw();
        k_array[i].right(random(4));
    }
}