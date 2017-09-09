#ifndef TestGame_H_
#define TestGame_H_

#include "gameplay.h"

using namespace gameplay;

/**
 * Main game class.
 */
class TestGame: public Game
{
public:

    /**
     * Constructor.
     */
    TestGame();

    /**
     * @see Game::keyEvent
     */
	void keyEvent(Keyboard::KeyEvent evt, int key);
	
    /**
     * @see Game::touchEvent
     */
    void touchEvent(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);

protected:

    /**
     * @see Game::initialize
     */
    void initialize();

    /**
     * @see Game::finalize
     */
    void finalize();

    /**
     * @see Game::update
     */
    void update(float elapsedTime);

    /**
     * @see Game::render
     */
    void render(float elapsedTime);
    
    static void drawFrameRate(Font* font, const Vector4& color, unsigned int x, unsigned int y, unsigned int fps);

private:
    Font* _font;
    
    Model* _model;
    
	float _spinDirection;
    
    Matrix _worldViewProjectionMatrix;
};

#endif
