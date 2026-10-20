from setuptools import setup, find_packages

setup(
    name='apiverve_commentgenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Comment Generator produces social media comments formatted for text or image posts across positive, negative, and neutral tones. Each request returns generated comment text with optional emoji support, while paid plans can request batches up to 10.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/commentgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
