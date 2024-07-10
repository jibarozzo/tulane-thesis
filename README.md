# Tulane Dissertation Format

*A Quarto template for Tulane University's SSE and SLA dissertations.*

<!-- badges: start -->

<!-- badges: end -->

This repository is originally a fork of the [Quarto Masters Thesis](https://github.com/biostats-r/quartothesis) by the Department of Biological Sciences, University of Bergen. A good master thesis template but not necessarily for a doctoral dissertation. I later incorporated many of the extensions and repo structure from [Eli Holmes' template](https://github.com/nmfs-opensci/quarto-thesis) which more closely matched Tulane's requirements. It is based on the \LaTeX{} thesis template MastersDoctoralThesis version 2.0 downloaded from [LaTeXTemplates](http://www.LaTeXTemplates.com). The final product complies (unofficially) with the [General Guidelines for Use Preparing Theses and Dissertations](https://tulane.app.box.com/s/xxplukzuzv52f286hrvdxu4nx7l0kykp) for the School of Science and Engineering (SSE) at Tulane University. Notice SSE could change their format standards in the future.

Other good resources for editing and modifiying this template are: 
 - [Awesome-quarto-thesis](https://github.com/Jupyter4Science/awesome-quarto-thesis?tab=readme-ov-file)
 - [Cameron Patrick's formatting tips](https://cameronpatrick.com/post/2023/07/quarto-thesis-formatting/#sec-additional-front-matter) at he University of Melbourne and  
 - Alberto Guzman's [Quarto dissertation template](https://github.com/alberto-guzman/quarto-dissertation/tree/main) for the University of Pittsburg.  



## Installation

You will first need to install [quarto](https://quarto.org/).

### For a new document
You can use this as a template to create a new dissertation. To do this, use the following command:

```bash
quarto use template jibarozzo/tulane-thesis
```

This will install the extension and create an example qmd file that you can use as a starting place for your article.

### For an existing document
You may also use this format within an existing Quarto project or document. From the project or document directory, run this command:

```bash
quarto install extension jibarozzo/tulane-thesis
``` 


Once you have installed the extension, cloned or forked this repository, open the `.Rproj` file to work directly from R studio. You can also edit from your favorite text editor and render through the CLI. For example:

```bash
quarto render 
```

## Writing and Editing
The workflow is just like R Markdown but with more control over the document through the YAML header. You will render the final product as a book, hence **each chapter/section should be a new file**. The _`quarto.yml` and the `extensions/_extensions.yml` take care of the rendering process.

For a LaTeX document, the class file `tulane-thesis.cls` in the `_extensions/tulane-thesis` determines the look and LaTeX environments available. To make any changes to the layout, change the `tulane-thesis.cls` in the `_extensions` folder. The `tulane-thesis.cls` file in the main folder will be overwritten by the one in the `_extensions` folder when you re-rerender. 
The `tulane-thesis.cls` is just a modified `MasterDoctoralThesis.cls` document class. You can find more information by doing a web search for MasterDoctoralThesis.cls. 

### Adding content
start adding Chapters in qmd format to the Chapters folder. then add the chapter (or appendix) to the _quarto.yml file



Start by editing the `_quarto.yml` file. Here you need to edit the:

-   `title`
-   `author` 
-   `chapters` 
-   `appendices` 
-   `echo` to false to hide code

Add chapters in .qmd format to the `chapters` folder and call them as `chapters/Chapter1.qmd`, and so on. The same applies to appendices. 

For Tulane, the disserttation committee members are added under `supervisor:` in the `_quarto.yml` file.

`R` code is run in each chapter independently. This probably isn't a big problem as most of the code will be for the results chapter. If you find you need to duplicate code across multiple chapters, consider using the [targets](https://books.ropensci.org/targets/) package.


## Contributing and Issues

Check out the [nmfs-opensci/quarto-thesis](https://github.com/nmfs-opensci/quarto-thesis) for more details, as well as their [discussions forum](https://github.com/nmfs-opensci/quarto-thesis/discussions)

This is a work in progress. Please feel free to contribute to this repository. If you find any issues, please open an issue on the repository.

 ## License
 CC0 1.0 Universal

## Quarto
To learn more about using Quarto markdown, see <https://quarto.org> and <http://biostats-r.github.io/biostats/quarto>
