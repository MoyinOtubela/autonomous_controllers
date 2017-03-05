close all; clear('all');
%% Load a bag, build a TF tree using it, and see what frames exist
% rosbag_dir = '/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_control/src/aerobot_tf_1.bag.active'
rosbag_dir = '/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_control/src/aerobot_tf_1.bag.active'
% rosbag_dir = '/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_control/src/aerobot_1.bag'
% rosbag_dir = '/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_control/src/sample_bag_1.bag'
bag = ros.Bag.load(rosbag_dir);
bag.info()
tree = ros.TFTree(bag);

tree.allFrames();

% %% Figure out where turtle1 was in the world frame throughout the experiment
times = linspace(tree.time_begin + 1, tree.time_end - 1);
% world_frame = 'shank_footprint';
world_frame = 'odom';

camera_tf = tree.lookup(world_frame, 'camera_link', times);
left_shoulder_tf = tree.lookup(world_frame, 'camera_link', times);
stab_tf = tree.lookup(world_frame, 'stab_link', times);
shank_footprint_tf = tree.lookup(world_frame, 'shank_footprint', times);
stabwheel_tf = tree.lookup(world_frame, 'stab_wheel', times);

camera_3dpose = [camera_tf.translation];
stab_3dpose = [stab_tf.translation];
shank_footprint_3dpose = [shank_footprint_tf.translation];
stabwheel_3dpose = [stabwheel_tf.translation];

title('Aerobot Kinematics','FontSize',12);
f = figure(1);
axis([-1 1 -1 1 -0.25 1.3]);
az = 180;
el = 0;
view(az, el);

xlabel('X-axis');ylabel('Y-axis');zlabel('Z-axis');
hold on
grid on

plot3(camera_3dpose(1,:),camera_3dpose(2,:),camera_3dpose(3,:),'ko')
plot3(stab_3dpose(1,:),stab_3dpose(2,:),stab_3dpose(3,:),'ro')
plot3(shank_footprint_3dpose(1,:),shank_footprint_3dpose(2,:),shank_footprint_3dpose(3,:),'bo')
plot3(stabwheel_3dpose(1,:),stabwheel_3dpose(2,:),stabwheel_3dpose(3,:),'gx')

% plot(turtle1_xyz(1, :), turtle1_xyz(2, :), '-');

% %% To get full 3D transforms, omit the last argument to lookup()
% camera_3dpose = tree.lookup(world_frame, turtle1_frame, times)

%% Learn more
% doc ros.TFTree
