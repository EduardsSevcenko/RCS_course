ssh -N -i <key> -f -L localhost:8080:localhost:8080 ubuntu@<IP> # ambari
ssh -N -i <key> -f -L localhost:4040:localhost:4040 ubuntu@<IP> #spark
ssh -N -i <key> -f -L localhost:18080:localhost:18080 ubuntu@<IP> #spark history
ssh -N -i <key> -f -L localhost:8088:localhost:8088 ubuntu@<IP> # yarn
ssh -N -i <key> -f -L localhost:9090:localhost:9090 ubuntu@<IP> #nifi
ssh -N -i <key> -f -L localhost:8889:localhost:8889 ubuntu@<IP> # builtin jupyter