# AHDrawingView

It is a UIView subclass using that you can draw anything on view, you can clear drawing and also you can get drawing Image.

## Preview
<a href="https://imgflip.com/gif/1mhq1k"><img src="https://i.imgflip.com/1mhq1k.gif" title=""/></a>

## Features

- [x] Add Drawing In UIView.
- [x] Change the Drawing Line Color.
- [x] Change the Drawing Line Width.
- [ ] The best is yet to come.

**Manual Installation**

Download the Sample and drag & drop the AHDrawingView.h and AHDrawingView.m in your project.

## How To Use.

**1) Add UIView From Storyboard in View Controller and Set the class to AHDrawingView or create the view programmatically.**

**2) Import AHDrawingView.h in your class header file.**

##Customization    

**1) Change the drawing line color.**

```objective-c

     ahDrawingView.lineColor = [UIColor redColor];

```

**2) Change the drawing line width.**

```objective-c

    ahDrawingView.lineWidth = 2.0;

```

##Functions

**1) Get an Image of drawing.**

```objective-c

     UIImage *img = [ahDrawingView getDrawingImage];

```

**2) Clear drawing.**

```objective-c

     [ahDrawingView clearDrawing];

```

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**,please submit a pull request.

## License

AHDrawingView is released under the MIT license. See LICENSE for details.



