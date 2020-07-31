##----------------------------
## Scraping sitio web Urbania
##----------------------------

library(rvest)

## Bajamos la pagina de Urbania
url <- "https://urbania.pe/buscar/venta-de-locales-comerciales#"
pagina_web <- read_html(url)

## Titulo del inmueble
css_txt <- ".posting-title"
txt_html <- html_nodes(pagina_web,css_txt)
producto_texto <- html_text(txt_html)

## Descripcion del inmueble
css_txt <- ".posting-description"
txt_html <- html_nodes(pagina_web,css_txt)
descripcion_texto <- html_text(txt_html)

## Precio del inmueble
css_txt <- ".first-price"
txt_html <- html_nodes(pagina_web,css_txt)
precio_texto <- html_text(txt_html)

## Main features
css_txt <- ".main-features"
txt_html <- html_nodes(pagina_web,css_txt)
main_texto <- html_text(txt_html)

## Une todos los datos
inm <- cbind(producto_texto, descripcion_texto, main_texto, precio_texto)
View(inm)