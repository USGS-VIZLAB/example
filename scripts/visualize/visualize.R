visualize.cars <- function(viz) {
  data <- readDepends(viz)

  sizes <- data[["plot-info"]]
  png(filename = viz[['location']], 
      width = sizes[["width"]], 
      height = sizes[["height"]])
  plot(data[[2]], xlab = "Speed (mph)", ylab = "Stopping distance (ft)",
       las = 1)
  lines(data[[1]], col = "red")
  dev.off()
}

visualize.iris <- function(viz) {
  # need to name depends
  data <- readDepends(viz)
  
  png(filename = viz[['location']], 
      width = 500, height = 500)
  library(gsplot)
  gs<- gsplot() %>% 
    points(data$Sepal.Length, data$Petal.Length, 
           col = as.factor(data$Species))
  print(gs)
  dev.off()
}

visualize.qTDS <- function(viz){
  depends=readDepends(viz)
  CuyahogaShort <- depends[["data"]]
  colors <- depends[["colors"]]
  svg(viz[['location']], height=4, width=4)
  plot(TDS ~ Q, CuyahogaShort, log = "xy", col=colors$points)
  dev.off()
}

visualize.dots <- function(viz){
  svg_text <- '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 600 450" preserveAspectRatio="xMidYMid meet" version="1.1">
  <g>
  <circle cx = "400" cy = "100" r = "10" onmousemove = "hovertext(\'this circle is green\',evt)" onmouseout = "hovertext(\' \')" style="fill:green"/>
  <rect x = "550" y = "20" height="410" width="40" style="fill:green"/>
  <rect x = "505" y = "20" height="410" width="40" onmousemove = "hovertext(\'this mouser is below the tooltip\',evt)" onmouseout = "hovertext(\' \')" style="fill:grey"/>
  <rect x = "40" y = "320" height="14" width="400" onmousemove = "hovertext(\'this shape happens to be blue\',evt)" onmouseout = "hovertext(\' \')" style="fill:blue"/>
  <circle cx = "10" cy = "120" r = "8" onmousemove = "hovertext(\'this circle is red\',evt)" onmouseout = "hovertext(\' \')" style="fill:red"/>
  </g>
  <g id = "tooltip-group"/>
  <rect x = "550" y = "20" height="410" width="40" onmousemove = "hovertext(\'this mouser is above the tooltip\',evt)" onmouseout = "hovertext(\' \')" style="fill-opacity:0"/>
  </svg>'
  cat(svg_text, file = viz[['location']])
}

visualize.path <- function(viz){
  svg_text <- '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 300" preserveAspectRatio="xMidYMid meet" version="1.1">
  <g onmousemove = "hovertext(\'this path is weird\',evt)" onmouseout = "hovertext(\' \')">
  <polyline points="5.33,27.73 5.33,27.73 6.87,15.75 8.40,12.81 9.93,11.83 11.46,14.28 13.00,12.08 14.53,13.54 16.06,13.30 17.59,13.79 19.13,14.28 20.66,11.83 22.19,8.90 23.72,7.18 25.26,6.69 26.79,6.45 28.32,6.20 29.85,5.47 31.39,4.49 32.92,5.47 34.45,8.16 35.98,10.85 37.52,6.94 39.05,4.49 40.58,3.02 42.11,3.51 43.65,2.53 45.18,2.29 46.71,1.56 48.25,2.53 49.78,3.76 51.31,1.80 52.84,1.56 54.38,1.07 55.91,2.78 57.44,4.74 58.97,6.45 60.51,11.10 62.04,15.01 63.57,17.70 65.10,20.64 66.64,23.09 68.17,25.53 69.70,12.32 71.23,11.10 72.77,10.36 74.30,13.79 75.83,13.79 77.36,12.08 78.90,14.52 80.43,18.44 81.96,17.95 83.49,14.28 85.03,9.38 86.56,7.67 88.09,7.18 89.62,5.23 91.16,3.27 92.69,5.71 94.22,5.47 95.75,3.02 97.29,7.43 98.82,10.85 100.35,11.83 101.89,14.52 103.42,17.70 104.95,20.88 106.48,21.62 108.02,22.84 109.55,23.33 111.08,23.57 112.61,23.82 114.15,24.06 115.68,24.55 117.21,24.31 118.74,24.55 120.28,25.04 121.81,24.80 123.34,25.04 124.87,25.04 126.41,24.80 127.94,25.04 129.47,25.04 131.00,25.29 132.54,25.04 134.07,24.55 135.60,24.31 137.13,24.06 138.67,23.57 138.67,27.73 " style="fill:blue"/>
  </g>
  <circle cx = "50" cy = "190" r = "10" onmousemove = "hovertext(\'this circle is green\',evt)" onmouseout = "hovertext(\' \')" style="fill:green"/>
  <g id = "tooltip-group"/>
  </svg>'
  cat(svg_text, file = viz[['location']])
}
