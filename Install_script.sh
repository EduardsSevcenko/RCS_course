# # THIS SCRIPT IS NOT TO BE EXECUTED ALL AT ONCE

# # General stuff
echo 'export LC_ALL=C' >> ~/.bashrc
source ~/.bashrc
sudo apt update
sudo apt install docker.io
sudo docker ps -a
sudo apt install unzip


# # Python and jupyter nb installations
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
bash Anaconda3-2019.10-Linux-x86_64.sh




# # Spark2.4 installations and linking with pyspark
sudo apt install openjdk-8-jre
curl -O https://downloads.apache.org/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
tar -zxf spark-2.4.5-bin-hadoop2.7
cd spark-2.4.5-bin-hadoop2.7
touch linking
cat >> linking # The indented block is to be copy-pasted into the input
function spark_notebook () 
{
#Spark path (based on your computer)
SPARK_PATH=~/spark-2.4.4-bin-hadoop2.7

export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --port 9999"

# For python 3 users, you have to add the line below or you will get an error 
export PYSPARK_PYTHON=python3

$SPARK_PATH/bin/pyspark --master local[*]
}
cat linking >> ~/.bashrc
source ~/.bashrc
# spark_notebook


# # HDP DOCKER!
# # Ielādē hdp skripta failu. Uzdevums ir uzlikt viņu uz lietotās mašīnas ar scp un atzipot
sudo bash docker-deploy-hdp30.sh
