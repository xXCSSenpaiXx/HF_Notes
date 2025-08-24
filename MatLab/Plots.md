# Plots

### Inhalt 
- [Commands](#Commands)
- [Name](#Link)


## Commands
- **plot**
    - Create a simple data plot
        - plot(x,y)
    - Plot a single vector
        - plot(x) 
        - vector values = y
        - numbers of values = x
    - Format plot lines & markers
        - plot(x,y "r--*", LineWidth=3)
        - [Documentation](https://ch.mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.line-properties.html)
        - [Plot Library](https://ch.mathworks.com/products/matlab/plot-gallery.html#contour-plots)
- **hold**
    - Overlay multiple plots
        - plot(x1,y1) (create first plot)
        - hold **on** (turn hold on)
        - plot(x2,y2) (overlay second plot)
        - plot(x3,y3) (overlay third plot)
        - hold **off** (turn hold off)
- **title**
    - Create title for active plot
        - title("Plot Title")
        - title("text" + variable)
- **label**
    - Create label for y / x axis
        - ylabel("Y-Axis Label")
        - xlabel("X-Axis Label")
- **legend**
    - Create legend for data points
        - legend("Exp A", "Exp B")
