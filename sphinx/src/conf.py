import datetime

now = datetime.datetime.now()

project = "Cloud Management Platform"
copyright = f"{now.year}, DoiT International. MIT License"

nitpicky = True

html_baseurl = "/sphinx-docs-cmp/"

source_suffix = ".rst"
master_doc = "index"

html_theme = "sphinx_book_theme"
html_static_path = ["_static"]
html_css_files = ["css/custom.css"]
html_extra_path = ["_extra"]
html_short_title = "Cloud Management Platform (CMP)"
html_title = f"DoiT {html_short_title}"
html_logo = "_static/img/logo.png"

graphic_url = "_static/img/graphic.png"

html_theme_options = {
    "repository_url": "https://github.com/doitintl/sphinx-docs-cmp",
    "repository_branch": "staging",
    "path_to_docs": "src",
    "use_repository_button": True,
    "use_issues_button": True,
    "use_edit_page_button": True,
    "show_navbar_depth": 2,
    "show_toc_level": 3,
    "extra_navbar": f'<img src="{graphic_url}" alt="">',
}

html_context = {"short_docstitle": html_short_title}

templates_path = ["_templates"]

# html_sidebars = {"**": ["_templates/sidebar-footer.html"]}

# html_sidebars = {
#     "**": "_templates/"
# }

exclude_patterns = [
    "**/.*",
]

html_last_updated_fmt = "%b %d, %Y"

rst_prolog = """
.. role:: raw-html(raw)
    :format: html
"""

rst_epilog = """

.. NOTE::

    The CMP documentation is an open-source project. If you spot any mistakes,
    have questions, or would like to make suggestions, please visit our `GitHub
    project <https://github.com/doitintl/sphinx-docs-cmp/>`__.

    Every page has a GitHub icon at the top with quick links for opening issues
    or suggesting edits.
"""
