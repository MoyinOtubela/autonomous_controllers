classdef aerobot_analysis
	properties
		rosbag_dir = '/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_control/src/'
		rosbag;

		world_frame = 'odom';

        shank_mass = 7;
        stab_mass = 0.04625;
        stab_wheel_mass = 0.75;
        thigh_mass = 2;
        torso_mass = 16;
        lhm_mass = 2.25;
        left_shoulder_mass = 0.25;
        right_shoulder_mass = 0.25;
        left_arm_mass = 0.25;
        right_arm_mass = 0.25;
        shank_left_wheel_mass = 0.25;
        shank_right_wheel_mass = 0.25;
        left_lhm_wheel_mass = 0.2;
        right_lhm_wheel_mass = 0.2;
        camera_mass = 1e-6;
        total_mass;

        s;
        h;
	end

	methods

		function obj = aerobot_analysis(bag_name)
			addpath('../');
			obj.rosbag = ros.Bag.load(strcat(obj.rosbag_dir,bag_name,'.active'));
			disp(obj.rosbag.info());
			title('Aerobot Kinematics','FontSize',12);
			f = figure(1), hold on, grid on
			axis([-1 1 -1 1 0 1])
			az = 180;
			el = 0;
			view(az, el);

		end

		function rot = get_rotation_matrix(obj, q)
			rot = zeros(3,3);
			% x = 1;
			% y = 2; 
			% z = 3;
			% w = 4;
			rot(1,1) = 1 - 2*q(2)^2 - 2*q(3)^2;
			rot(1,2) = 2*q(1)*q(2) - 2*q(3)*q(4);
			rot(1,3) = 2*q(1)*q(3) + 2*q(2)*q(4);
			rot(2,1) = 2*q(1)*q(2) + 2*q(3)*q(4);
			rot(2,2) = 1 - 2*q(1)^2 - 2*q(3)^2;
			rot(2,3) = 2*q(2)*q(3) - 2*q(1)*q(4);
			rot(3,1) = 2*q(1)*q(3) - 2*q(2)*q(4);
			rot(3,2) = 2*q(2)*q(3) + 2*q(1)*q(4);
			rot(3,3) = 1 - 2*q(1)^2 - 2*q(2)^2;
		end

		function pos = transform_point(obj, m, point)

			pos = [];
			for i = m
				mat =  ones(4,4);
				mat(1:3, 1:3) = obj.get_rotation_matrix([i.rotation]); 
				mat(1:3,4) = [i.translation];
			    coord =  mat*point;
			    pos = [pos;coord(1:3)'];
			end

		end

		function pos = get_com_positions(obj)
			mats = obj.load_tree;
			pos.camera_com = obj.transform_point(mats.camera_link, [0 0 0 1]');
			pos.shank_footprint_com = obj.transform_point(mats.shank_footprint, [0.163037 0 0.159341 1]');
			pos.stab_wheel_com = obj.transform_point(mats.stabwheel, [0 0 0 1]');
			pos.stab_link_com = obj.transform_point(mats.stab_link, [0 0 0.04625 1]');
			pos.thigh_link_com = obj.transform_point(mats.thigh_link, [0 0 0.1815 1]');
			pos.torso_link_com = obj.transform_point(mats.torso_link, [0 0 0.192 1]');
			pos.lhm_link_com = obj.transform_point(mats.lhm_link, [0 0 0.02 1]');
			pos.lhm_wheel_left_link_com = obj.transform_point(mats.lhm_wheel_left_link, [0 0 0 1]');
			pos.lhm_wheel_right_link_com = obj.transform_point(mats.lhm_wheel_right_link, [0 0 0 1]');
			pos.shoulder_left_link_com = obj.transform_point(mats.shoulder_left_link, [0 0.16 -0.15 1]');
			pos.shoulder_right_link_com = obj.transform_point(mats.shoulder_right_link, [0 -0.16 -0.15 1]');
			pos.arm_left_link_com = obj.transform_point(mats.arm_left_link, [0 0 -0.1325 1]');
			pos.arm_right_link_com = obj.transform_point(mats.arm_right_link, [0 0 -0.1325 1]');
			pos.wheel_left_link_com = obj.transform_point(mats.wheel_left_link, [0 0 0 1]');
			pos.wheel_right_link_com = obj.transform_point(mats.wheel_right_link, [0 0 0 1]');

		end

		% function obj = play_movie(obj)

  %           set(h1, 'XData', obj.joint_locations(2:18,1));
  %           set(h1, 'YData',obj.joint_locations(2:18,2));
  %           set(h1, 'ZData',obj.joint_locations(2:18,3));

		% end

		function obj = animate(obj)
			pose = obj.get_com_positions;

			h = [];

			% plot3(pose.camera_com(:,1),pose.camera_com(:,2),pose.camera_com(:,3),'k-','MarkerSize', 39), grid on, hold on
			% plot3(pose.shank_footprint_com(:,1),pose.shank_footprint_com(:,2),pose.shank_footprint_com(:,3),'k-');
			% plot3(pose.stab_wheel_com(:,1),pose.stab_wheel_com(:,2),pose.stab_wheel_com(:,3),'k-');
			% plot3(pose.thigh_link_com(:,1),pose.thigh_link_com(:,2),pose.thigh_link_com(:,3),'k-');
			% plot3(pose.torso_link_com(:,1),pose.torso_link_com(:,2),pose.torso_link_com(:,3),'k-');
			% plot3(pose.lhm_link_com(:,1),pose.lhm_link_com(:,2),pose.lhm_link_com(:,3),'k-');
			% plot3(pose.lhm_wheel_left_link_com(:,1),pose.lhm_wheel_left_link_com(:,2),pose.lhm_wheel_left_link_com(:,3),'k-');
			% plot3(pose.lhm_wheel_right_link_com(:,1),pose.lhm_wheel_right_link_com(:,2),pose.lhm_wheel_right_link_com(:,3),'k-'); 
			% plot3(pose.shoulder_left_link_com(:,1),pose.shoulder_left_link_com(:,2),pose.shoulder_left_link_com(:,3),'k-','MarkerSize', 39); 
			% plot3(pose.shoulder_right_link_com(:,1),pose.shoulder_right_link_com(:,2),pose.shoulder_right_link_com(:,3),'k-','MarkerSize', 39); 
			% plot3(pose.arm_left_link_com(:,1),pose.arm_left_link_com(:,2),pose.arm_left_link_com(:,3),'k-','MarkerSize', 39);
			% plot3(pose.arm_right_link_com(:,1),pose.arm_right_link_com(:,2),pose.arm_right_link_com(:,3),'k-','MarkerSize', 39); 
			% plot3(pose.wheel_left_link_com (:,1),pose.wheel_left_link_com (:,2),pose.wheel_left_link_com (:,3),'k-','MarkerSize', 39); 
			% plot3(pose.wheel_right_link_com(:,1),pose.wheel_right_link_com(:,2),pose.wheel_right_link_com(:,3),'k-','MarkerSize', 39); 



			h(1) = plot3(pose.camera_com(1,1),pose.camera_com(1,2),pose.camera_com(1,3),'b.','MarkerSize', 39);
			h(2) = plot3(pose.shank_footprint_com(1,1),pose.shank_footprint_com(1,2),pose.shank_footprint_com(1,3),'b.','MarkerSize', 39);
			h(3) = plot3(pose.stab_wheel_com(1,1),pose.stab_wheel_com(1,2),pose.stab_wheel_com(1,3),'b.','MarkerSize', 39);
			h(4) = plot3(pose.thigh_link_com(1,1),pose.thigh_link_com(1,2),pose.thigh_link_com(1,3),'b.','MarkerSize', 39);
			h(5) = plot3(pose.torso_link_com(1,1),pose.torso_link_com(1,2),pose.torso_link_com(1,3),'b.','MarkerSize', 39); 
			h(6) = plot3(pose.lhm_link_com(1,1),pose.lhm_link_com(1,2),pose.lhm_link_com(1,3),'b.','MarkerSize', 39); 
			h(7) = plot3(pose.lhm_wheel_left_link_com(1,1),pose.lhm_wheel_left_link_com(1,2),pose.lhm_wheel_left_link_com(1,3),'b.','MarkerSize', 39);
			h(8) = plot3(pose.lhm_wheel_right_link_com(1,1),pose.lhm_wheel_right_link_com(1,2),pose.lhm_wheel_right_link_com(1,3),'b.','MarkerSize', 39);
			h(9) = plot3(pose.shoulder_left_link_com(1,1),pose.shoulder_left_link_com(1,2),pose.shoulder_left_link_com(1,3),'b.','MarkerSize', 39); 
			h(10) = plot3(pose.shoulder_right_link_com(1,1),pose.shoulder_right_link_com(1,2),pose.shoulder_right_link_com(1,3),'b.','MarkerSize', 39);
			h(11) = plot3(pose.arm_left_link_com(1,1),pose.arm_left_link_com(1,2),pose.arm_left_link_com(1,3),'b.','MarkerSize', 39);
			h(12) = plot3(pose.arm_right_link_com(1,1),pose.arm_right_link_com(1,2),pose.arm_right_link_com(1,3),'b.','MarkerSize', 39); 
			h(13) = plot3(pose.wheel_left_link_com (1,1),pose.wheel_left_link_com (1,2),pose.wheel_left_link_com (1,3),'b.','MarkerSize', 39);
			h(14) = plot3(pose.wheel_right_link_com(1,1),pose.wheel_right_link_com(1,2),pose.wheel_right_link_com(1,3),'b.','MarkerSize', 39);
			h(15) = plot3(pose.stab_link_com(1,1),pose.stab_link_com(1,2),pose.stab_link_com(1,3),'b.','MarkerSize', 39);
			drawnow;

			% % Play at frequency
			fields = fieldnames(pose)
			iter = 1;
			
			for j = 1:100
				for i = 1:15
					pose_ = pose.(fields{i})(j,:);
		            set(h(i), 'XData', pose_(1));
		            set(h(i), 'YData', pose_(2));
		            set(h(i), 'ZData', pose_(3));
				end
				% drawnow;
	            pause(0.05);

			end


			% Plot full history
			% plot3(pose.camera_com(:,1),pose.camera_com(:,2),pose.camera_com(:,3),'b.','MarkerSize', 39), grid on, hold on
			% plot3(pose.shank_footprint_com(:,1),pose.shank_footprint_com(:,2),pose.shank_footprint_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.stab_wheel_com(:,1),pose.stab_wheel_com(:,2),pose.stab_wheel_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.thigh_link_com(:,1),pose.thigh_link_com(:,2),pose.thigh_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.torso_link_com(:,1),pose.torso_link_com(:,2),pose.torso_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.lhm_link_com(:,1),pose.lhm_link_com(:,2),pose.lhm_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.lhm_wheel_left_link_com(:,1),pose.lhm_wheel_left_link_com(:,2),pose.lhm_wheel_left_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.lhm_wheel_right_link_com(:,1),pose.lhm_wheel_right_link_com(:,2),pose.lhm_wheel_right_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.shoulder_left_link_com(:,1),pose.shoulder_left_link_com(:,2),pose.shoulder_left_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.shoulder_right_link_com(:,1),pose.shoulder_right_link_com(:,2),pose.shoulder_right_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.arm_left_link_com(:,1),pose.arm_left_link_com(:,2),pose.arm_left_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.arm_right_link_com(:,1),pose.arm_right_link_com(:,2),pose.arm_right_link_com(:,3),'b.','MarkerSize', 39), 
			% plot3(pose.wheel_left_link_com (:,1),pose.wheel_left_link_com (:,2),pose.wheel_left_link_com (:,3),'b.','MarkerSize', 39), 
			% plot3(pose.wheel_right_link_com(:,1),pose.wheel_right_link_com(:,2),pose.wheel_right_link_com(:,3),'b.','MarkerSize', 39), 
			% xlabel('X-axis');ylabel('Y-axis');zlabel('Z-axis');

		end

		function mats = load_tree(obj)
			world_frame = obj.world_frame;
			tree = ros.TFTree(obj.rosbag);
			disp(tree.allFrames())
			% times = linspace(tree.time_begin + 1, tree.time_end - 1, 100);
			% times = linspace(tree.time_begin + 1, tree.time_end - 1, 10000);
			times = linspace(tree.time_begin + 1, tree.time_end - 1);
			% Load tf data
			mats.camera_link = tree.lookup(world_frame, 'camera_link', times);
			mats.shank_footprint = tree.lookup(world_frame, 'shank_footprint', times);
			mats.shank_link = tree.lookup(world_frame, 'shank_link', times);
			mats.thigh_link = tree.lookup(world_frame, 'thigh_link', times);
			mats.torso_link = tree.lookup(world_frame, 'torso_link', times);
			mats.lhm_link = tree.lookup(world_frame, 'lhm_link', times);
			mats.lhm_wheel_right_link = tree.lookup(world_frame, 'lhm_wheel_right_link', times);
			mats.lhm_wheel_left_link = tree.lookup(world_frame, 'lhm_wheel_left_link', times);
			mats.shoulder_left_link = tree.lookup(world_frame, 'shoulder_left_link', times);
			mats.shoulder_right_link = tree.lookup(world_frame, 'shoulder_right_link', times);
			mats.arm_right_link = tree.lookup(world_frame, 'arm_right_link', times);
			mats.arm_left_link = tree.lookup(world_frame, 'arm_left_link', times);
			mats.wheel_right_link = tree.lookup(world_frame, 'wheel_right_link', times);
			mats.wheel_left_link = tree.lookup(world_frame, 'wheel_left_link', times);
			mats.stab_link = tree.lookup(world_frame, 'stab_link', times);
			mats.stabwheel = tree.lookup(world_frame, 'stab_wheel', times);

			% Extract 3d pose

			% camera_3dpose = [camera_tf.translation];
			% stab_3dpose = [stab_tf.translation];
			% shank_footprint_3dpose = [shank_footprint_tf.translation];
			% stabwheel_3dpose = [stabwheel_tf.translation];

		end

	end

end
