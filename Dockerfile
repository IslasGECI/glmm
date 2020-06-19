FROM islasgeci/jupyter:ff82
# Instala paquetes de R
RUN conda install --quiet --yes \
    'r-car' \
    'r-emmeans' \
    'r-ggpubr' \
    'r-lme4' \
    'r-mumin' \ 
        && \
    conda clean --all -f --yes && \
    fix-permissions $CONDA_DIR
