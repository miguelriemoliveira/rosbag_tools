#!/usr/bin/env python3

import rosbag
from colorama import Fore, Style
from pytictoc import TicToc
from tqdm import tqdm


def config_camera_intrinsics(bag_file_path, bag_file_out_path, camera_topic, distortion, k_matrix, r_matrix, p_matrix):
    print('Producing a new bag ' + Fore.BLUE + bag_file_out_path + Style.RESET_ALL)

    # --------------------------------------------------------------------------
    # Read the bag input file
    # --------------------------------------------------------------------------
    print('Loading bagfile ' + bag_file_path)
    bag = rosbag.Bag(bag_file_path) # load the bag file
    
    # --------------------------------------------------------------------------
    # Initial setup
    # --------------------------------------------------------------------------
    tictoc = TicToc()
    tictoc.tic()
    bag_out = rosbag.Bag(bag_file_out_path, 'w')
    
    # --------------------------------------------------------------------------
    # Writing new bagfile
    # --------------------------------------------------------------------------
    first_time = True # print msg only one time
    print('Converting bagfile. Please wait...')
    for topic, msg, stamp, connection_header in tqdm(bag.read_messages(return_connection_header=True), total=bag.get_message_count(), desc='Processing bag messages'):
        if topic == camera_topic:
            if first_time:
                print(f'\033[1mIntrinsic values from input bag:\033[0m\n{msg}')
            
            if distortion:
                msg.D = list(msg.D)
                msg.D[0] = distortion[0]
                msg.D[1] = distortion[1]
                msg.D[2] = distortion[2]
                msg.D[3] = distortion[3]
                msg.D[4] = distortion[4]
                msg.D = tuple(msg.D)

            if k_matrix:
                msg.K = list(msg.K)
                msg.K[0] = k_matrix[0]
                msg.K[1] = k_matrix[1]
                msg.K[2] = k_matrix[2]
                msg.K[3] = k_matrix[3]
                msg.K[4] = k_matrix[4]
                msg.K[5] = k_matrix[5]
                msg.K[6] = k_matrix[6]
                msg.K[7] = k_matrix[7]
                msg.K[8] = k_matrix[8]
                msg.K = tuple(msg.K)

            if r_matrix:
                msg.R = list(msg.R)
                msg.R[0] = r_matrix[0]
                msg.R[1] = r_matrix[1]
                msg.R[2] = r_matrix[2]
                msg.R[3] = r_matrix[3]
                msg.R[4] = r_matrix[4]
                msg.R[5] = r_matrix[5]
                msg.R[6] = r_matrix[6]
                msg.R[7] = r_matrix[7]
                msg.R[8] = r_matrix[8]
                msg.R = tuple(msg.R)

            if p_matrix:
                msg.P = list(msg.P)
                msg.P[0] = p_matrix[0]
                msg.P[1] = p_matrix[1]
                msg.P[2] = p_matrix[2]
                msg.P[3] = p_matrix[3]
                msg.P[4] = p_matrix[4]
                msg.P[5] = p_matrix[5]
                msg.P[6] = p_matrix[6]
                msg.P[7] = p_matrix[7]
                msg.P[8] = p_matrix[8]
                msg.P[9] = p_matrix[9] 
                msg.P[10] = p_matrix[10]
                msg.P[11] = p_matrix[11]
                msg.P = tuple(msg.P)

            if first_time:
                print(f'\033[1mIntrinsic values written to output bag:\033[0m\n{msg}')
                first_time = False
            
            bag_out.write(topic, msg, stamp, connection_header=connection_header)
        else:
            bag_out.write(topic, msg, stamp, connection_header=connection_header)
    
    bag.close() # close the bag file.
    bag_out.close() # close the bag file.
    
    print('Finished in ' + str(round(tictoc.tocvalue(),2)) + ' seconds.')
