from setuptools import find_packages
from setuptools import setup

REQUIRED_PACKAGES = ['pandas', 'keras', 'oauth2client', 'googleapiclient', 'flask']

setup(
    name='vitechtrainer',
    version='0.1',
    install_requires=REQUIRED_PACKAGES,
    packages=find_packages(),
    include_package_data=True,
    description='ViTech machine learning trainer package.'
)
