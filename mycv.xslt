<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/cv">
        <xsl:text disable-output-escaping='yes'>
            &lt;!DOCTYPE html&gt; &#xd;
        </xsl:text>
        <!--[if lt IE 9]> <html lang="de" class="no-mq no-js"> <![endif]-->
        <!--[if !(IE) | (gte IE 9)]><!--> <html lang="de" class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Full Stack Developer</title>
            <link rel="stylesheet" href="css/cv.css" />
            <!--[if lte IE 8]>
                <script src="/js/html5shiv.js"></script>
            <![endif]-->
            <link rel="image_src" type="image/jpg" href="img/share.jpg" />
            <link rel="icon" type="image/x-icon" href="img/favicon.ico" />

            <script>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

                ga('create', 'UA-4333818-3', 'auto');
                ga('send', 'pageview');

            </script>
        </head>

        <body>

            <main class="container">

                <a href="https://github.com/alexlebesc/cvmanager"><img style="position: absolute; top: 0; left: 0; border: 0;" src="https://camo.githubusercontent.com/8b6b8ccc6da3aa5722903da7b58eb5ab1081adee/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f6c6566745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_left_orange_ff7600.png" /></a>

                <p class="icons icons-header">
                    <a href="cv_alexlebescond.pdf"><i class="fa fa-file-pdf-o"></i></a>
                    <a href="https://au.linkedin.com/pub/alex-le-bescond/4/31/451"><i class="fa fa-linkedin"></i></a>
                </p>
                <img src="img/alex.jpg"/>

                <section class="profile">

                    <div>
                        <xsl:apply-templates select="profile"/>
                    </div>
                </section>

                <section class="experience">

                    <h1>Expériences professionnelles</h1>

                    <xsl:apply-templates select="experience"/>

                </section>

                <section class="education">
                    <h1>Formation</h1>

                    <xsl:apply-templates select="education"/>

                </section>

                <section class="skills">
                    <h1>Compétences</h1>
                    <xsl:apply-templates select="skills"/>
                </section>

                <section class="language">
                    <h1>Langues</h1>
                    <article>
                        <ul>
                            <xsl:apply-templates select="language"/>
                        </ul>
                    </article>
                </section>

                <section class="interests">
                    <h1>Loisirs</h1>
                    <article>
                        <xsl:apply-templates select="interests"/>
                    </article>
                </section>
            </main>

            <footer>
                <p class="icons"><a href="cv_alexlebescond.pdf"><i class="fa fa-file-pdf-o"></i></a>
                    <a href="https://au.linkedin.com/pub/alex-le-bescond/4/31/451"><i class="fa fa-linkedin"></i></a></p>
                <div class="clear-both"></div>
            </footer>


            <!-- RequireJS -->
            <script src="js/require.js"></script>
            <script>
                // Load common code for all pages
                require(['js/common.js'], function()
                {
                require(["js/collapse"], function(Collapse)
                {

                Collapse.init();

                $('.collapse-hd').on('click', function() {
                var $this = $(this);



                if ($this.hasClass('is-active')) {
                $('.experience article header').removeClass('is-active');
                } else {
                $('.experience article header').removeClass('is-active');
                $this.addClass('is-active');
                }


                });

                $('.collapse-hd').on('mouseup', function() {
                var $this = $(this);
                //$this.addClass('active');
                setTimeout(function() {$('html,body').animate({
                scrollTop: $this.offset().top - 50},
                'slow')}, 500);
                });



                });
                // Load page specific code
                require(['js/main-index.js']);

                });
            </script>


        </body>

    </html>

    </xsl:template>

    <xsl:variable name="replaceBy" select="'abcdefghijklmnopqrstuvwxyz-'" />
    <xsl:variable name="toreplace" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ '" />

    <xsl:template match="profile">
        <h1><xsl:value-of select="./fullname"/></h1>
        <h2><xsl:value-of select="./title"/></h2>
        <p>
            <span class="email"><xsl:value-of select="./email"/></span>
            <span class="phone"><xsl:value-of select="./phone"/></span>
        </p>
        <p class="about-me">
            <xsl:value-of select="./aboutme"/>
        </p>
    </xsl:template>

    <xsl:template match="experience">
        <article class="experience_accordion">
            <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion">
                <xsl:attribute name="data-collapse-target-member">
                    <xsl:value-of select="translate(./company, $toreplace, $replaceBy)" />
                </xsl:attribute>
                <p>
                    <span class="year"><xsl:value-of select="./startdate"/> - <xsl:value-of select="./enddate"/></span>
                </p>
                <p>
                    <span class="position"><xsl:value-of select="./position"/></span>
                </p>
                <p>
                    <span class="company"><xsl:value-of select="./company"/></span>
                    <span class="city"><xsl:value-of select="./city"/>, <xsl:value-of select="./country"/></span>
                </p>
                <i class="fa fa-chevron-down"></i>
                <i class="fa fa-chevron-up"></i>
            </header>
            <div class="collapse-bd" data-collapse-group="experience_accordion">
                <xsl:attribute name="data-collapse-member">
                    <xsl:value-of select="translate(./company, $toreplace, $replaceBy)" />
                </xsl:attribute>
                <div class="collapse-inner">
                    <xsl:copy-of select="comment"/>
                </div>
                <ul class="tech">
                    <xsl:apply-templates select="tech"  mode="experience" />
                </ul>
                <div class="clear-both"></div>
            </div>

        </article>
    </xsl:template>

    <xsl:template match="tech"  mode="experience">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>


    <xsl:template match="education">
        <article>
            <p>
                <span class="year"><xsl:value-of select="./startdate"/> – <xsl:value-of select="./enddate"/></span>
            </p>
            <p>
                <span class="degree"><xsl:value-of select="./title"/></span>
            </p>
            <p>
                <span class="school"><xsl:value-of select="./school"/></span> <span class="city"><xsl:value-of select="./city"/></span>
            </p>
        </article>
    </xsl:template>

    <xsl:template match="skills">
        <article class="{@class}">
            <h1><xsl:value-of select="./title"/></h1>
            <ul>
                <xsl:apply-templates select="skill"/>
            </ul>
            <div class="clear-both"></div>
        </article>
    </xsl:template>

    <xsl:template match="skill">
        <xsl:choose>
            <xsl:when test="level">
                <li>
                    <div class="skill">
                        <span class="skill-title"><xsl:value-of select="./name"/></span>
                    </div>
                    <div class="level-box">
                        <span class="level level-{level}"> <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text> </span>
                    </div>
                </li>
            </xsl:when>

            <xsl:otherwise>
                <li><xsl:value-of select="./name"/></li>
            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>

    <xsl:template match="language">
        <li><xsl:value-of select="./name"/> :	<xsl:value-of select="./level"/></li>
    </xsl:template>

    <xsl:template match="interests">
        <ul>
            <xsl:apply-templates select="activity"/>
        </ul>

    </xsl:template>

    <xsl:template match="activity">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

</xsl:stylesheet>