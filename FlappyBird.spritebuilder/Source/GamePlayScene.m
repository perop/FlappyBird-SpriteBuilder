#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    timeSinceObstacle = 0.0f;
    [self addObstacle];
    
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;

    }

}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [character flap];
    
}


@end
