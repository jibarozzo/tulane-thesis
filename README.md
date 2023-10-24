# Tulane_Quarto_Dissertation

<!-- badges: start -->

<!-- badges: end -->

This repository is originally a fork of the [Quarto Masters Thesis](https://github.com/biostats-r/quartothesis) by the Department of Biological Sciences, University of Bergen. Agood master thesis template but not necessarily for a docotoral dissertation. I incorporated code from [Cameron Patrick's formatting tips](https://cameronpatrick.com/post/2023/07/quarto-thesis-formatting/#sec-additional-front-matter) at he University of Melbourne and  Alberto Guzman's [Quarto dissertation template](https://github.com/alberto-guzman/quarto-dissertation/tree/main) for the University of Pittsburg. The final product complies (unofficially) with the [General Guidelines for Use Preparing Theses and Dissertations](https://tulane.app.box.com/s/xxplukzuzv52f286hrvdxu4nx7l0kykp) for the School of Science and Engineering (SSE) at Tulane university. Notice SSE could change their format standards in the future. 


Once you have cloned or forked this repository, open the `.Rproj` file in R studio and use the commands in the `make_thesis.R` file to render the dissertation skeleton. I have only rendered the PDF version as this is all that is required for SSE, so I am not aware of any issue when rendereing the HTML.  But for day-to-day work, use the HTML version to spend less time formatting. Ideally I can set this up as a template that you can generate and start right away. Coming soon!

Please let me know any issues. 

## Writing and Editing

Start by editing the ``\_quarto.yml` file. Here you need to edit the

-   title (line 9)
-   author (line 10)
-   chapters (line 13) if you add or remove any chapters
-   appendices (line 24) if you add or remove any appendices
-   echo to false to hide code

To change the degree (lines 15-25) and commmitee members (lines 50>) got to the `_titlepage.tex` file. You can edit using a simple text editor or in R Studio. 
Each chapter should be a new file.

`index.qmd `is a special chapter that makes the cover page for the HTML version of the thesis and is hidden in the PDF version.

R code is run in each chapter independently. This probably isn't a big problem as most of the code will be for the results chapter. If you find you need to duplicate code across multiple chapters, consider using the [targets](https://books.ropensci.org/targets/) package.

To learn more about using quarto markdown, see <http://biostats-r.github.io/biostats/quarto>
