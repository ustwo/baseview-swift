### BaseView

UIView subclass to abstract Base functionality for iOS

### Dependencies 

* [Xcode](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12#)

### Installation

- Add the BaseView.h and UIView+BaseView.m files to your Xcode project.

### Usage

Use the BaseView as a base for all your custom UIViews's and take advantage overriding the same methods for your setup code e.g.

    - (void)setup
    {
    	[super setup]; // Note. if you miss this the compiler warns you

    	self.backgroundColor = [UIColor redColor];
    	
		// Title label
		
    	self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    	[self addSubview:self.titleLabel];
    }
    
	- (void)setupConstraints
	{
    	[super setupConstraints]; // Note. if you miss this the compiler warns you
    
	    // Title label
	    
	    [self addConstraint:
	     [NSLayoutConstraint constraintWithItem:self.titleLabel
	                                  attribute:NSLayoutAttributeLeft
	                                  relatedBy:NSLayoutRelationEqual
	                                     toItem:self
	                                  attribute:NSLayoutAttributeLeft
	                                 multiplier:1.0
	                                   constant:0.0]];
	    
	    [self addConstraint:
	     [NSLayoutConstraint constraintWithItem:self.titleLabel
	                                  attribute:NSLayoutAttributeRight
	                                  relatedBy:NSLayoutRelationEqual
	                                     toItem:self
	                                  attribute:NSLayoutAttributeRight
	                                 multiplier:1.0
	                                   constant:0.0]];
	    
	    [self addConstraint:
	     [NSLayoutConstraint constraintWithItem:self.titleLabel
	                                  attribute:NSLayoutAttributeTop
	                                  relatedBy:NSLayoutRelationEqual
	                                     toItem:self
	                                  attribute:NSLayoutAttributeTop
	                                 multiplier:1.0
	                                   constant:0.0]];
	}

### Team

* Developers: [Shagun Madhikarmi](mailto:shagun@ustwo.com), [Martin Stolz](mailto:martin@ustwo.com)