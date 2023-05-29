# rosbag_tools
A set of tools for processing rosbags.

## Aggregating /tf_static messages:

    ./aggregate_tf_static_msgs -bfi original.bag

## Covert dynamic transformations to static transformations (moving from /tf to /tf_static):

    ./dynamic_to_static_tf -bfi original.bag -p ee_link -c hand_camera

## Correcting the pose of a transformation:

    ./correct_poses -bfi original.bag -t /tf_static -p ee_link -c hand_camera -trans 0.1 0.1 0.1 -rot 0.5 0.5 0.5 0.5

## Deleting links (by giving the links to keep):

    ./delete_tfs_in_bagfile -bfi original.bag -ttk base_link shoulder_link upper_arm_link forearm_link wrist_1_link wrist_2_link wrist_3_link ee_link cam_1_link

## Update intrinsics parameters in camera info topic:

    ./config_camera_intrinsics -bfi original.bag -ct camera/camera_info -d 0.6 -2.2 -0.0 0.0 0.0 -k 2125.6 0.0 1018.8 0.0 2056.6 549.2 0.0 0.0 1.0 -r 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 -p 2210.4 0.0 1025.5 0.0 0.0 2148.7 537.7 0.0 0.0 0.0 1.0 0.0



