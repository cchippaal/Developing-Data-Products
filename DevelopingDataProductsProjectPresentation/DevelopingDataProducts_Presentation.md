DevelopingDataProducts_Presentation
========================================================
author: Chakra c
date:  August 20, 2015
autosize: true

Shiny App ggplot2 Demo Description
========================================================

- Minimum stengths of `ggplot` not widely known
- Non-intuitive syntax of `ggplot` R commands
- Optional features such as `colour` and `facet_wrap` mysterious to many


Who will helpful this ShinyApp?
========================================================
- Power Users to see the power and flexibility of `ggplot`
- Demonistrate to others how to use `ggplot` with examples
- Wishing to review the power of the `eval` command
- Who wants to use the `ggplot` but was hesitant to make the leap

```r
ggplot_command = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom)
    eval(parse(text=ggplot_command))
```

Sample Command and Plot Generated by the ShinyApp ggplot2 Demo
========================================================

```r
g = ggplot(mpg, aes(x=cyl, y=hwy, colour=class)) + facet_wrap(~drv) + geom_point()
```


![plot of unnamed-chunk-4](DevelopingDataProducts_Presentation-figure/unnamed-chunk-4.png) 

Try the ShinyApp ggplot2 Demo Today
========================================================


- Deployed at [https://cchippala.shinyapps.io/Developing-Data-Products](https://cchippala.shinyapps.io/Developing-Data-Products)
- Help? Please go through the documentation link: [help_documention.html](href="help_documention.html")
- Source Code Location: [https://github.com/cchippaal/Developing-Data-Products](https://github.com/cchippaal/Developing-Data-Products) 