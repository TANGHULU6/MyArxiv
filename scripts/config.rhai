/// =====================
/// 标题高亮关键词
/// =====================

// 类型（遵守模板示例字段名）
let titles_type = [
    "Dataset", "Survey", "Benchmark", "Challenge", "Leaderboard"
];

// 模型/主题（世界模型/扩散/高斯/视频生成/一致性）
let titles_model = [
    "World Model", "World-Model", "Latent World",
    "Diffusion", "Video Diffusion", "Consistency Model",
    "Gaussian Splatting", "4D Gaussian", "Generative Dynamics"
];

// 方法/任务（导航/规划/轨迹/SLAM；RL/多智能体；IR/检索）
let titles_method = [
    // 机器人/仿真/平台
    "Robot", "Robotics", "Manipulation", "Isaac Sim", "Franka",
    "ALOHA", "LIBERO", "OpenVLA", "VLA", "DROID",

    // 导航/规划/轨迹
    "Navigation", "VLN", "Planner", "Planning", "Trajectory",
    "Waypoint", "SLAM", "Odometry", "VINS", "Pose Estimation",

    // RL / MARL / 控制
    "Reinforcement Learning", "RL", "PPO", "SAC", "TD3",
    "Actor-Critic", "Imitation Learning", "Decision Transformer",
    "Multi-Agent", "MARL",

    // Mobility / POI / 轨迹预测
    "Mobility", "Next Location", "POI", "Check-in",
    "Spatiotemporal", "Subzone", "Kumamoto", "NYC", "Tokyo",

    // IR / 检索 / 推荐 / Agentic IR
    "Retrieval", "Information Retrieval", "Ranking", "Dense Retrieval",
    "RecSys", "Recommendation", "Agentic", "Tool Use",

    // 多模态
    "Multimodal", "Vision-Language", "Video-Language", "VQA"
];

// 最终供 highlight_title 使用：按照模板示例拼接
let titles = titles_model + titles_method + titles_type;

/// =====================
/// 作者高亮（实验室/机构关键词 + 常读学者）
/// =====================

let authors_array = [
    // Labs/Orgs
    "Google DeepMind", "Google Research", "Meta AI", "FAIR",
    "Microsoft Research", "NVIDIA", "OpenAI",
    "MIT", "Stanford", "CMU", "UC Berkeley", "Oxford",
    "MPI", "ETH Zurich", "Tsinghua", "PKU", "SJTU", "ZJU",
    "NTU", "NUS", "KAIST", "Tohoku",

    // 常读作者（示例，可自行继续加）
    "Sergey Levine", "Pieter Abbeel", "Chelsea Finn",
    "Jiajun Wu", "Yilun Du", "Shuran Song",
    "Deva Ramanan", "Hao Su", "Yinfei Yang"
];

/// =====================
/// 会议/期刊（模板已内置大部分，此处可补充/覆盖）
/// =====================

let conferences = [
    // — ML/AI —
    "NeurIPS", "ICML", "ICLR", "AAAI", "IJCAI",

    // — CV —
    "CVPR", "ICCV", "ECCV",

    // — NLP —
    "ACL", "EMNLP", "NAACL", "COLING",

    // — 数据库 / 数据挖掘 / IR —
    "SIGIR", "WSDM", "KDD", "VLDB", "SIGMOD", "ICDE",

    // — 网络 / 系统 —
    "WWW", "TheWebConf", "INFOCOM", "ICNP", "SIGCOMM",

    // — 机器人 —
    "CoRL", "ICRA", "IROS", "RSS",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;