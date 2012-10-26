

#import "FlipsideViewController.h"

@interface FlipsideViewController ()
@property (nonatomic, copy) NSString* outputString;
@end

@implementation FlipsideViewController

// note that we no longer set up a delegate property and a protocol for him to obey
// (though of course we could do so if desired)

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"flipside view will appear: %@", self.inputString);
    // pretend that in the course of our existence we do some Really Important Work...
    // ... leaving the results in a property where our presenter can get it
    if (self.isBeingPresented)
        self.outputString = [self.inputString uppercaseString];
}

@end
