---
home: true
#heroImage: /img/logo.png
heroText: 致敬大师，致敬未来的自己
tagline: 记录技术沉淀之路、披荆斩棘
actionText: 开始阅读 →
actionLink: /java/
bannerBg: none # auto => 网格纹背景(有bodyBgImg时无背景)，默认 | none => 无 | '大图地址' | background: 自定义背景样式       提示：如发现文本颜色不适应你的背景时可以到palette.styl修改$bannerTextColor变量

features:
  - title: 避坑指南
    details: 同一个地方绝不再次跌倒，记录工作中的各种疑难杂症，避免重复入坑
  - title: 技术进阶
    details: 技术更新迭代，日新月异，如逆水行舟，不进则退，强化自身，不断提升
  - title: 经验沉淀
    details: 装进口袋的东西亦有丢失的可能，而装进脑袋的东西才是真正沉淀下来的东西

# 文章列表显示方式: detailed 默认，显示详细版文章列表（包括作者、分类、标签、摘要、分页等）| simple => 显示简约版文章列表（仅标题和日期）| none 不显示文章列表
postList: none

# 最新动态配置
latestUpdates:
  - date: "2025-07-01"
    content: 博客全新改版上线，优化了阅读体验
    link: /
---

<div class="home-container">
  <div class="tech-header">
    <div class="tech-line"></div>
    <h2>👨‍💻 技术探索者</h2>
    <div class="tech-line"></div>
  </div>

  <div class="intro-section">
    <p>作为后端架构师和技术探索者，我专注于Java、Python、大数据和架构设计领域，致力于将复杂技术简单化，帮助更多人在技术道路上少走弯路。</p>
    <div class="tech-stats">
      <div class="stat-item">
        <span class="stat-number">12+</span>
        <span class="stat-label">年架构经验</span>
      </div>
      <div class="stat-item">
        <span class="stat-number">7+</span>
        <span class="stat-label">技术专栏</span>
      </div>
      <div class="stat-item">
        <span class="stat-number">50+</span>
        <span class="stat-label">技术文章</span>
      </div>
    </div>
  </div>

  <div class="tech-header">
    <div class="tech-line"></div>
    <h2>🔥 最新动态</h2>
    <div class="tech-line"></div>
  </div>

  <div class="updates-section">
    <div class="update-item" v-for="(update, index) in $frontmatter.latestUpdates" :key="index">
      <span class="update-date">{{ update.date }}</span>
      <span class="update-content">
        <a :href="update.link">{{ update.content }}</a>
      </span>
    </div>
  </div>

  <div class="tech-header">
    <div class="tech-line"></div>
    <h2>🎖 推荐开源项目</h2>
    <div class="tech-line"></div>
  </div>

  <div class="project-container">
  <div class="project-card">
    <a href="https://nacos.io/zh-cn/" target="_blank">
      <div class="project-title">Nacos</div>
      <div class="project-description">🚀 一个更易于构建云原生应用的动态服务发现、配置管理和服务管理平台。</div>
    </a>
  </div>
  <div class="project-card">
    <a href="https://github.com/GrowingGit/GitHub-Chinese-Top-Charts" target="_blank">
      <div class="project-title">GitHub-Chinese-Top-Charts</div>
      <div class="project-description">🚀 中文排行榜，各语言分设「软件 | 资料」榜单，精准定位中文好项目。各取所需，高效学习。</div>
    </a>
  </div>
  <div class="project-card">
    <a href="https://gitlab.com/awesomeai/awesome-chatgpt-zh" target="_blank">
      <div class="project-title">ChatGPT 中文指南</div>
      <div class="project-description">🚀 指令指南，精选资源清单，更好的使用 ChatGPT 让你的生产力 up up up！</div>
    </a>
  </div>
</div>

  <div class="notice-section">
    <div class="notice tip">
      <p>文章内容仅是我个人的学习总结，如有不足之处，欢迎指正！</p>
    </div>
    <div class="notice warning">
      <p>本站所有文章未经授权禁止转载、摘编、复制或建立镜像。如需转载，请联系作者获取授权。</p>
    </div>
  </div>
</div>

<style>
:root {
  --theme-color: #3eaf7c;
  --text-color: #2c3e50;
  --border-color: #eaecef;
  --bg-color: #ffffff;
  --card-bg: #f8f8f8;
  --hover-color: #f2f2f2;
  --link-color: #3eaf7c;
}

.home-container {
  max-width: 960px;
  margin: 0 auto;
  padding: 2rem 1.5rem;
  color: var(--text-color);
}

.tech-header {
  display: flex;
  align-items: center;
  margin: 3rem 0 1.5rem;
}

.tech-line {
  flex: 1;
  height: 1px;
  background: linear-gradient(90deg, rgba(62,175,124,0) 0%, rgba(62,175,124,1) 50%, rgba(62,175,124,0) 100%);
}

.tech-header h2 {
  margin: 0 1rem;
  font-size: 1.8rem;
  font-weight: 600;
  color: var(--theme-color);
  white-space: nowrap;
  border-bottom: none;
  padding-bottom: 0;
}

.intro-section {
  background-color: var(--bg-color);
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
  margin-bottom: 2rem;
}

.intro-section p {
  font-size: 1.1rem;
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.tech-stats {
  display: flex;
  justify-content: space-around;
  text-align: center;
  margin-top: 1.5rem;
}

.stat-item {
  display: flex;
  flex-direction: column;
}

.stat-number {
  font-size: 2rem;
  font-weight: bold;
  color: var(--theme-color);
}

.stat-label {
  font-size: 1rem;
  color: #666;
  margin-top: 0.5rem;
}

.updates-section {
  background-color: var(--bg-color);
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
  margin-bottom: 2rem;
}

.update-item {
  display: flex;
  margin-bottom: 1rem;
  padding-bottom: 1rem;
  border-bottom: 1px dashed var(--border-color);
}

.update-item:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  border-bottom: none;
}

.update-date {
  font-weight: 600;
  color: var(--theme-color);
  min-width: 100px;
  margin-right: 1rem;
}

.update-content {
  flex: 1;
}

.update-content a {
  color: var(--text-color);
  text-decoration: none;
  transition: color 0.3s;
}

.update-content a:hover {
  color: var(--link-color);
  text-decoration: underline;
}

.contact-section {
  display: flex;
  justify-content: center;
  margin: 2rem 0;
}

.contact-section a {
  margin: 0 1rem;
  color: var(--theme-color);
  font-weight: 500;
  text-decoration: none;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  transition: all 0.3s;
}

.contact-section a:hover {
  background-color: var(--hover-color);
}

.notice-section {
  margin: 2rem 0;
}

.notice {
  padding: 1rem;
  border-radius: 4px;
  margin-bottom: 1rem;
}

.notice p {
  margin: 0;
}

.tip {
  background-color: rgba(62, 175, 124, 0.1);
  border-left: 4px solid var(--theme-color);
}

.warning {
  background-color: rgba(255, 229, 100, 0.1);
  border-left: 4px solid #e7c000;
}

@media (max-width: 719px) {
  .tech-stats {
    flex-direction: column;
    gap: 1rem;
  }
  
  .update-item {
    flex-direction: column;
  }
  
  .update-date {
    margin-bottom: 0.5rem;
  }
  
  .projects-section {
    grid-template-columns: 1fr;
  }
}

/* 添加科技感动画 */
.home-container {
  position: relative;
  overflow: hidden;
}

.home-container::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(90deg, var(--theme-color), #4abf8a, var(--theme-color));
  z-index: 1;
  animation: gradient-animation 3s ease infinite;
  background-size: 200% 200%;
}

@keyframes gradient-animation {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}

/* 确保背景为白色 */
.theme-container .home {
  background-color: #ffffff !important;
}


.project-container {
display: flex;
justify-content: space-between;
}
.project-card {
flex-basis: 30%;
background-color: #F0F0F0;
padding: 20px;
border-radius: 5px;
text-align: center;
margin: 0 10px;
}
.project-card a {
text-decoration: none;
}
.project-title {
font-size: 18px;
font-weight: bold;
margin-bottom: 10px;
}
.project-description {
font-size: 14px;
}
</style>


