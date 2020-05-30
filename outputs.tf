output "MASTER" {
  value = "${aws_instance.master.public_ip}"
}

output "MASTER-PRIVATE" {
  value = "${aws_instance.master.private_ip}"
}

output "WORKER1" {
  value = "${aws_instance.worker-1.public_ip}"
}

output "WORKER2" {
  value = "${aws_instance.worker-2.public_ip}"
}

output "LOADBALANCER" {
  value = "${aws_instance.lb01.public_ip}"
}

# MASTER = 3.235.138.199
# MASTER-PRIVATE = 10.0.0.19
# WORKER1 = 34.232.51.56
# WORKER2 = 3.235.86.166

# 10.0.0.19    k8s-master
# 10.0.0.69    k8s-worker-node1
# 10.0.0.201   k8s-worker-node2


# kubeadm join 10.0.0.19:6443 --token 7yumup.xn7zbiq9npuo6stk \
#     --discovery-token-ca-cert-hash sha256:c836f7ba6b15efea0116bb2a7f7d75ca8209b4cded7cdd82d79db2e4a8e78eb1

#     kubeadm join 10.0.0.19:6443 --token mtlwv5.9cpifnd8dyh7k5cu \
#     --discovery-token-ca-cert-hash sha256:f2bddaebdf684f0ca7b4a8718e725bdbab135000827c07d06e22794be05af267
