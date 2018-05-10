echo ""
echo "Installing a fresh version of Miniconda."
curl -L https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh > ~/miniconda.sh;
bash ~/miniconda.sh -b -p ~/miniconda
source ~/miniconda/bin/activate root

echo ""
echo "Configuring conda."
conda config --add channels aquaveo
conda config --set show_channel_urls true
conda install --yes --quiet networkx conda-build anaconda-client