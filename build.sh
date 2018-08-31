ACTIVATE_DIR=$PREFIX/etc/conda/activate.d
DEACTIVATE_DIR=$PREFIX/etc/conda/deactivate.d
SHARE_DIR=$PREFIX/share/cacurl
mkdir -p $ACTIVATE_DIR
mkdir -p $DEACTIVATE_DIR
mkdir -p $SHARE_DIR

cp $RECIPE_DIR/scripts/activate.sh $ACTIVATE_DIR/cacurl-activate.sh
cp $RECIPE_DIR/scripts/deactivate.sh $DEACTIVATE_DIR/cacurl-deactivate.sh
cp $RECIPE_DIR/conf/openssl.cnf $SHARE_DIR/cacurl-openssl.cnf
