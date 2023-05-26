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


