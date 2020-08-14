from setuptools import setup

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(
    name="sphinx_press_theme",
    version="0.5.1",
    url="https://github.com/qntnet/documentation",
    license="MIT",
    author="Eduardo Naufel Schettino <schetino72> qntnet",
    description="A Sphinx-doc theme based on Vuepress",
    long_description=long_description,
    long_description_content_type="text/markdown",
    packages=["sphinx_press_theme"],
    package_data={
        "sphinx_press_theme": [
            "theme.conf",
            "*.html",
            "util/*.html",
            "static/*.css",
            "static/*.js",
        ]
    },
    entry_points={"sphinx.html_themes": ["press = sphinx_press_theme"]},
    install_requires=["sphinx>=2.0.0"],
    classifiers=[
        "Framework :: Sphinx",
        "Framework :: Sphinx :: Theme",
        "Development Status :: 4 - Beta",
        "License :: OSI Approved :: MIT License",
        "Environment :: Console",
        "Environment :: Web Environment",
        "Intended Audience :: Developers",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Operating System :: OS Independent",
        "Topic :: Documentation",
        "Topic :: Software Development :: Documentation",
    ],
    keywords="sphinx doc theme vue.js",
    project_urls={
        "Documentation": "https://github.com/qntnet/documentation",
        "Source": "https://github.com/qntnet/documentation",
        "Tracker": "https://github.com/qntnet/documentation/issues",
    },
)