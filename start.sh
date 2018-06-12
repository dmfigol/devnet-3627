sed -i "" '/198.18.1/d' ${HOME}/.ssh/known_hosts
docker pull dmfigol/jupyter-netdevops:clus-2018
docker run -it --rm -p 58888:58888 -v ${PWD}/jupyter:/jupyter/ --name=devnet-3627 dmfigol/jupyter-netdevops:clus-2018
open "http://localhost:58888/"
open "http://localhost:58888/notebooks/DEVNET-3627.ipynb"
