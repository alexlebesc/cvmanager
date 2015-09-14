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
                        <h1>Alex Le Bescond</h1>
                        <h2>Développeur Web Full Stack</h2>
                        <p>
                            <span class="email">alex.lebescond@gmail.com</span>
                            <span class="phone">+33 (0)7 81 77 06 66</span>
                        </p>
                        <p class="about-me">
                            Passionné des technologies Web, avec plus de 9 ans d'expérience, je suis à la recherche  d’un poste
                            de (lead) développeur full stack ou architecte au sein d’une entreprise dynamique et innovatrice.
                        </p>
                    </div>
                </section>

                <section class="experience">

                    <h1>Expériences professionnelles</h1>

                    <article class="experience_accordion">
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="junkee-media">
                            <p>
                                <span class="year">2012 - 2015</span>
                            </p>
                            <p>
                                <span class="position">Développeur Web Full Stack</span>
                            </p>
                            <p>
                                <span class="company">Sound Alliance</span>
                                <span class="city">Sydney, Australie</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="junkee-media">
                            <ul class="collapse-inner">
                                <li>
                                    Responsable du développement et des innovations technologiques de tous les magazines en ligne de Sound Alliance :
                                    <ul>
                                        <li><a href="http://www.inthemix.com.au">www.inthemix.com.au</a> 686 000 visites / mois)</li>
                                        <li><a href="http://www.fasterlouder.com.au">www.fasterlouder.com.au</a> (531 000 visites / mois)</li>
                                        <li><a href=">http://www.samesame.com.au">www.samesame.com.au</a> (100 000 visites / mois)</li>
                                        <li><a href="http://junkee.com">junkee.com</a> (1 537 000 visites / mois)</li>
                                        <li><a href="http://awol.com.au">awol.com.au</a> (136 000 visites / mois)</li>
                                    </ul>
                                </li>
                                <li>
                                    Maintenance de la plateforme de publication “CORE”, CMS développé à Sound Alliance utilisant MVC.
                                </li>
                                <li>
                                    Responsable des performances et de l’optimisation de l’infrastructure des sites en production.
                                </li>
                                <li>
                                    Amélioration de l’environnement et des méthodes de développement de l’équipe.
                                </li>
                            </ul>
                            <ul class="tech">
                                <li>PHP 5.4</li>
                                <li>Symfony2</li>
                                <li>Wordpress</li>
                                <li>MySQL</li>
                                <li>Require.js</li>
                                <li>Angular.js</li>
                                <li>Grunt</li>
                                <li>Bower</li>
                                <li>SASS</li>
                                <li>Vagrant</li>
                                <li>Chef</li>
                                <li>Varnish</li>
                                <li>New Relic</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>

                    </article>

                    <article>
                        <!--data-collapse-target-member="viocorp"-->
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="viocorp">
                            <p>
                                <span class="year">2011-2012</span>
                            </p>
                            <p>
                                <span class="position">Développeur PHP Sénior</span>
                            </p>
                            <p>
                                <span class="company">Viocorp</span>
                                <span class="city">Sydney, Australie</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="viocorp">
                            <ul class="collapse-inner">
                                <li>
                                    Développement de nouvelles fonctionnalités, amélioration et optimisation de VIOMEDIA, CMS dédié à la publication de vidéos en ligne :
                                    <ul>
                                        <li>Création d’outils de reporting et d’analyse pour VIOMEDIA</li>
                                        <li>Optimisation de requêtes SQL (MSSQL)</li>
                                        <li>Utilisation des méthodes de développement Domain Driven Design (DDD) et Command-Query Responsibility Segregation (CQRS) pour la réingénérie logicielle (refactoring) de VIOMEDIA</li>
                                        <li>Utilisation de Backbone.js pour les interfaces utilisateur du CMS.</li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="tech">
                                <li>PHP 5.4</li>
                                <li>PHP 5.3</li>
                                <li>MSSQL</li>
                                <li>Symfony2</li>
                                <li>jQuery</li>
                                <li>Backbone.js</li>
                                <li>less</li>
                                <li>twig</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>


                    <article>
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="solution4">
                            <p>
                                <span class="year">2009-2011</span>
                            </p>
                            <p>
                                <span class="position">Développeur PHP</span>
                            </p>
                            <p>
                                <span class="company">Solution 4</span>
                                <span class="city">Sydney, Australie</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="solution4">
                            <ul class="collapse-inner">
                                <li>
                                    Développement de nouvelles fonctionnalités et amélioration de SENRO, un progiciel de gestion pour entreprises spécialisées dans les assurances et crédits :
                                    <ul>
                                        <li>Développement d’un gestionnaire de futurs clients</li>
                                        <li>Développement d’un calendrier</li>
                                        <li>Développement d’un système d’annotation</li>
                                        <li>Développement d’un gestionnaire de tâche.</li>

                                    </ul>
                                </li>
                            </ul>
                            <ul class="tech">
                                <li>PHP</li>
                                <li>MySql</li>
                                <li>Zend Framework 1</li>
                                <li>jQuery</li>
                                <li>HTML</li>
                                <li>CSS</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>

                    <article>
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="quanthouse">
                            <p>
                                <span class="year">2007-2009</span>
                            </p>
                            <p>
                                <span class="position">Développeur Web</span>
                            </p>
                            <p>
                                <span class="company">Quanthouse</span>
                                <span class="city">Paris, France</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="quanthouse">
                            <ul class="collapse-inner">
                                <li>Développement de composants Web intégrés à QuantFactory, un IDE pour traders.</li>
                                <li>Design, développement et déploiement d’outils Intranet.</li>
                                <li>Développement d’un portail Web pour les clients de Quanthouse.</li>
                                <li>Développement du site Web de Quanthouse.</li>
                                <li>Migration de données d’une plateforme de gestion de services d’assistance à OTRS (Open-source Ticket Request System).</li>
                            </ul>
                            <ul class="tech">
                                <li>PHP</li>
                                <li>Ruby</li>
                                <li>MySql</li>
                                <li>Xslt</li>
                                <li>SOAP</li>
                                <li>Drupal 6</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>

                    <article>
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="csiro">
                            <p>
                                <span class="year">2007</span>
                            </p>
                            <p>
                                <span class="position">Développeur Web</span>
                            </p>
                            <p>
                                <span class="company">CSIRO</span>
                                <span class="city">Brisbane, Australie</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="csiro">
                            <ul class="collapse-inner">
                                <li>
                                    Développement d’une interface Web permettant de contrôler des systèmes embarqués :
                                    <ul>
                                        <li>Configurer et lancer des missions.</li>
                                        <li>Visualisation des messages de log.</li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="tech">
                                <li>PHP</li>
                                <li>HTML</li>
                                <li>CSS</li>
                                <li>Javascript</li>
                                <li>C</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>

                    <article>
                        <header class="collapse-hd icon-chevron-down" data-collapse-target-group="experience_accordion" data-collapse-target-member="altcom">
                            <p>
                                <span class="year">2005-2006</span>
                            </p>
                            <p>
                                <span class="position">Développeur Web</span>
                            </p>
                            <p>
                                <span class="company">Altcom</span>
                                <span class="city">Penzance, Royaume Uni</span>
                            </p>
                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>
                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="altcom">
                            <ul class="collapse-inner">
                                <li>Création d’une plateforme de vente de photos en ligne.</li>
                            </ul>
                            <ul class="tech">
                                <li>PHP</li>
                                <li>MySql</li>
                                <li>HTML</li>
                                <li>CSS</li>
                                <li>Javascript</li>
                                <li>OSCommerce</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>

                    <article>
                        <header class="collapse-hd" data-collapse-target-group="experience_accordion" data-collapse-target-member="ifremer">
                            <p>
                                <span class="year">2004</span>
                            </p>
                            <p>
                                <span class="position">Développeur Web</span>
                            </p>
                            <p>
                                <span class="company">IFREMER</span>
                                <span class="city">Brest, France</span>
                            </p>

                            <i class="fa fa-chevron-down"></i>
                            <i class="fa fa-chevron-up"></i>

                        </header>
                        <div class="collapse-bd" data-collapse-group="experience_accordion" data-collapse-member="ifremer">
                            <ul class="collapse-inner">
                                <li>
                                    Développement d’une application Web permettant de contrôler les droits d’accès sur les sites Intranet de l’IFREMER.
                                </li>
                            </ul>
                            <ul class="tech">
                                <li>Perl</li>
                                <li>HTML</li>
                                <li>CSS</li>
                                <li>LDAP</li>
                            </ul>
                            <div class="clear-both"></div>
                        </div>
                    </article>
                </section>

                <section class="education">
                    <h1>Formation</h1>

                    <article>
                        <p>
                            <span class="year">2005 – 2007</span>
                        </p>
                        <p>
                            <span class="degree">Master professionnel, spécialité Informatique</span>
                        </p>
                        <p>
                            <span class="school">IUP</span> <span class="city">Vannes (56)</span>
                        </p>
                    </article>

                    <article>
                        <p>
                            <span class="year">2004 – 2005</span>
                        </p>
                        <p>
                            <span class="degree">Licence Informatique</span>
                        </p>
                        <p>
                            <span class="school">IUP</span> <span class="city">Vannes (56)</span>
                        </p>
                    </article>

                    <article>
                        <p>
                            <span class="year">2002 – 2004</span>
                        </p>
                        <p>
                            <span class="degree">D.U.T. génie des télécommunications et réseaux</span>
                        </p>
                        <p>
                            <span class="school">IUT</span> <span class="city">Lannion (22)</span>
                        </p>
                    </article>

                </section>

                <section class="skills">
                    <h1>Compétences</h1>
                    <article>
                        <h1>Programmation</h1>
                        <ul>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">PHP</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-100"> <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text> </span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Symfony2</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-80"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Zend Framework 1</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-40"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Wordpress</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-90"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Drupal 6</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-40"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">OSCommerce</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-60"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">HTML</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-100"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">CSS</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-100"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">SASS</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-40"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Javascript</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-100"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">JQuery</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-60"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Backbone.js</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-30"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Require.js</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-60"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Angular.js</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-50"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">MySql</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-90"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">MS SQL</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-40"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Ruby</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-30"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Perl</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-20"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">C, C++</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-10"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                            <li>
                                <div class="skill">
                                    <span class="skill-title">Java</span>
                                </div>
                                <div class="level-box">
                                    <span class="level level-10"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></span>
                                </div>
                            </li>
                        </ul>
                        <div class="clear-both"></div>
                    </article>
                    <article  class="tools">
                        <h1>Outils de travail</h1>
                        <ul>
                            <li>Linux</li>
                            <li>Phpstorm</li>
                            <li>Vim</li>
                            <li>Composer</li>
                            <li>Git</li>
                            <li>Github</li>
                            <li>Vagrant</li>
                            <li>Virtual Box</li>
                            <li>Chef</li>
                            <li>Yeoman</li>
                            <li>Grunt</li>
                            <li>Bower</li>
                            <li>Jira</li>
                            <li>Trello</li>
                            <li>Chrome</li>
                            <li>New Relic</li>
                            <li>Varnish</li>
                        </ul>
                        <div class="clear-both"></div>
                    </article>
                </section>

                <section class="language">
                    <h1>Langues</h1>
                    <article>
                        <ul>
                            <li>Français :	Langue maternelle</li>
                            <li>Anglais :		Bilingue</li>
                            <li>Espagnol :	Notions</li>
                        </ul>
                    </article>
                </section>

                <section class="interests">
                    <h1>Loisirs</h1>
                    <article>
                        <ul>
                            <li>Planche à voile</li>
                            <li>Surf</li>
                            <li>Football</li>
                            <li>Trekking</li>
                            <li>Guitare basse, guitare, harmonica, piano, accordéon</li>
                        </ul>
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

</xsl:stylesheet>