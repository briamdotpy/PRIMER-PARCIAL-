#!/bin/bash

#Los comandos que utilice para realizar las particiones y el formateo fueron: "sudo fdisk /dev/, sudo mkfs.ext4 /dev/."

# Resolviendo el punto B, Haciendo un for para poder montar las particiones que realicé con anterioridad.

#
for i in {1..9}; do
    sudo mount "/dev/sdc${i}" "/Examenes-UTN/parcial_$i"
done
sudo mount "/dev/sdc10" /Examenes-UTN/profesores

#
for i in {1..9}; do
    echo "/dev/sdc${i} /Examenes-UTN/parcial_$i ext4 defaults 0 0" | sudo tee -a /etc/fstab
done
echo "/dev/sdc10 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

# Intenté realizar el montaje con un for pero al parecer no lo logré." 
