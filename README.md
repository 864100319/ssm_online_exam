<blockquote style="border-left-color: #ff0000">
个人主页： https://www.bestguo.top。

注意：

如果您通过付费方式获取该项目，那么很抱歉，本人不负任何责任，请务必举报卖家并申请退款。

商用请邮件私聊。
</blockquote>
> 完结撒花，期末项目终于结束啦 🎉🎉🎉

## 所需技术

本次期末项目采用以下技术，其中又分为前端部分和后端部分

### 后端部分

1. Spring + SpringMVC + MyBatis
2. Apache POI（处理word，excel）
3. pageHelper（处理分页）
4. JUnit（用于单元测试）

### 前端部分

1. layUI
2. jQuery
3. ~~Axios（已弃用）~~

## 项目协作

项目协作的部分使用 git，使用 gitee 作为代码仓库。在使用 git 作为多人协作会可能出现以下的问题，一个是不会用，另一个是会用之后，不知该如何去合并。

gitee 账号创建完成之后，需要配置 SSH，SSH 的配置可以参考下面的链接。

[如何管理你的多个 SSH key](https://www.bestguo.top/journal/How-do-you-configure-ssh-in-your-pc/)

### 如何操作

clone 之后配置好项目，访问这个页面 http://localhost:8080/ssm_online_exam/test/demo ，能访问到就说明配置成功了。

#### 如果你是新加入的组员

1、首先获取项目：

```bash
git clone https://gitee.com/bestguo2020/ssm_online_exam.git
```

2、获取项目完成切换到 dev01 分支进行操作了

> 分支的可以理解成工作区，但是专业的叫法还是叫“分支”

```bash
git checkout dev01
```

接下来就是配置开发者的邮箱和用户名，配置用户名和邮箱可以参考以下链接

[如何管理你的多个 SSH key - 项目配置](https://www.bestguo.top/journal/How-do-you-configure-ssh-in-your-pc/#%E9%A1%B9%E7%9B%AE%E9%85%8D%E7%BD%AE)

以下配置完成之后就可以继续愉快的写代码了。

3、假如你某项功能完成之后，需要添加你要提交的代码（“.” 代表全部的代码）

```bash
git add .
```

4、在提交代码时需要交代清楚你需要做了哪些工作，也就是 xxxxx 里的内容需要填写的部分。

```bash
git commit -m "xxxxxx"
```

5、推送到远程仓库之前，将 gitee 上的远程代码拉取下来

```bash
git pull origin dev01
```

6、开始推送，同时也需要将你的工作区推到 gitee

```bash
git push origin dev01
```

#### 如果你是已加入的组员
<<<<<<< HEAD

1、首先获取最新的项目：

=======

1、首先获取最新的项目：

>>>>>>> bd90940fd7787700601f9a101d48817b29132934
```bash
git pull origin dev01
```

拉取完成之后就可以继续愉快的写代码了。

2、假如你某项功能完成之后，需要添加你要提交的代码（“.” 代表全部的代码）

```bash
git add .
```

3、在提交代码时需要交代清楚你需要做了哪些工作，也就是 xxxxx 里的内容需要填写的部分。

```bash
git commit -m "xxxxxx"
```

4、推送到远程仓库之前，将 gitee 上的远程代码拉取下来

```bash
git pull origin dev01
```

5、开始推送，同时也需要将你的工作区推到 gitee

```bash
git push origin dev01
```

### 可能出现的问题

在进行协作的时候，可能会出现代码冲突等等问题，后续出现了问题就在此进行记录吧

## 分析

### 系统用例

本次期末项目分析了一下此次的用例描述，还画出的对应的用例图。

#### 用例描述

在线考试系统中，学生和教师需要进行登录方可进入考试系统。教师可以将自己的题目上传到系统，形成自己的题库，可以发布考题进行线上考核，同时也可以生成试卷进行线下考核，但是线下考核的分数需要人工来进行判定。考试结束之后，系统会自动计算每个学生的考试成绩，成绩计算完成之后，教师可以查询学生的考试情况，也可以将线上考试成绩进行导出。

学生在登录进入考试系统参加考试，在参加考试之前需要加入班级并选择一个班级，待老师发布考题，在规定的时间开始才能开始考试，考试结束之后，学生可以查看考试成绩，也可以不看，等老师将成绩公布出来也行。如果学生加错了班级或者想退出班级，可以直接退出该班级。

管理员除了拥有教师的全部功能，还可以管理教师信息、学生信息和班级信息。

#### 用例图

本次在线考试系统的系统用例图如下（越画越离谱）

![](https://www.bestguo.top/journal/ssm-online-exam/QQ%E6%88%AA%E5%9B%BE20210417222207.png)

在线考试参与者说明如下

|  参与者名称  |                   描述                   | 同义词 |
| :----------: | :--------------------------------------: | :----: |
|     学生     |            使用该系统进行考试            |  考生  |
|     教师     |  使用该系统组织学生考试、管理学生和题库  |        |
|    管理员    |          对本系统的数据进行管理          |        |
| 文档生成系统 | 为该系统提供成绩导出，试卷生成的外部接口 |        |
|     时间     |   习惯用法，启动需要系统自动执行的用例   |        |

在线考试用例如下

|   用例名称   |                     描述                     |    同义词    |
| :----------: | :------------------------------------------: | :----------: |
|     注册     |              完成系统的注册业务              |              |
|     登录     |                   登陆系统                   |              |
|   管理班级   |              对班级进行增删改查              |              |
| 管理教师信息 |            对教师信息进行增删改查            |              |
| 管理学生信息 |            对学生信息进行增删改查            | 管理考生信息 |
|   管理题库   |          对题库中的题目进行增删改查          |   管理题目   |
|   查询成绩   |                查询考试的成绩                |              |
|   管理试卷   |              对试卷进行增删改查              |              |
|   试卷生成   |      通过外部接口将试卷导出到 word 文档      |              |
|   导出成绩   |   通过外部接口将考试成绩导出到 excel 文档    |              |
|   加入班级   |          通过加课码的方式来加入班级          |              |
|   退出班级   |                退出所在的班级                |              |
|   选择班级   |             选择一个班级参加考试             |              |
|   参加考试   |            在规定的时间内完成考试            |              |
|   考试计时   |               对考试的时间计时               |              |
| 自动保存答案 | 系统会不定时将答案上传到系统，防止误操作丢失 |              |

#### 用例文档

这里把最核心部分的用例，使用用例文档的方式给描述出来。有什么不足之处欢迎指出。

”登录“ 用例文档

<table>
	<tr>
		<td>用例名称</td>
		<td>登录</td>
	</tr>
    <tr>
		<td>简要说明</td>
		<td>登录到考试系统</td>
	</tr>
    <tr>
		<td>参与者</td>
		<td>教师、学生、管理员</td>
	</tr>
    <tr>
		<td>涉众</td>
		<td>教师、学生、管理员、各学校、各培训机构</td>
	</tr>
    <tr>
		<td>扩展点</td>
		<td>无</td>
	</tr>
    <tr>
		<td>前置条件</td>
		<td>学生和教师需要先注册账号</td>
	</tr>
    <tr>
		<td>后置条件</td>
		<td>无</td>
	</tr>
    <tr>
		<td>基本事件流</td>
		<td>
        	<ol>
                <li>该用例开始于进入登录界面</li>
                <li>用户需要选择“学生”或者“老师”</li>
                <li>系统显示相关的登录表单</li>
                <li>用户输入邮箱和密码进行登录</li>
                <li>系统验证邮箱和密码</li>
                <li>系统显示登录成功，并跳转到考试系统界面（1）</li>
            </ol>
        </td>
	</tr>
    <tr>
		<td>备选事件流</td>
		<td>
            <ol>
                <li>系统显示登录失败的问题</li>
                <ol>
                    <li>用户重新输入账号和密码</li>
                    <li>用户可结束该用例，也可以继续尝试或重新注册账号</li>
                </ol>
            </ol>
        </td>
	</tr>
</table>

“管理试卷”用例文档

<table>
	<tr>
		<td>用例名称</td>
		<td>管理试卷</td>
	</tr>
    <tr>
		<td>简要说明</td>
		<td>对试卷进行管理，同时对试卷的题目进行检查</td>
	</tr>
    <tr>
		<td>参与者</td>
		<td>教师、管理员</td>
	</tr>
    <tr>
		<td>涉众</td>
		<td>教师、管理员、各学校、各培训机构</td>
	</tr>
    <tr>
		<td>扩展点</td>
		<td>试卷生成</td>
	</tr>
    <tr>
		<td>前置条件</td>
		<td>教师和管理员成功登录到本系统</td>
	</tr>
    <tr>
		<td>后置条件</td>
		<td>无</td>
	</tr>
    <tr>
		<td>基本事件流</td>
		<td>
        	<ol>
                <li>该用例开始于系统登录</li>
                <li>用户创建试卷</li>
                <li>系统显示创建成功</li>
                <li>用户选择题目或随机抽题（1）</li>
                <li>系统开始进行组卷</li>
                <li>系统提示组卷成功的消息</li>
                <li>对试题进行维护</li>
            </ol>
        </td>
	</tr>
    <tr>
		<td>备选事件流</td>
		<td>
            <ol>
                <li>用户在选择题目之前需要在题库中添加题目</li>
                <ol>
                    <li>系统提示需要创建题目</li>
                    <li>用户只能结束该用例</li>
                </ol>
            </ol>
        </td>
	</tr>
</table>

”参加考试“ 用例文档

<table>
	<tr>
		<td>用例名称</td>
		<td>参加考试</td>
	</tr>
    <tr>
		<td>简要说明</td>
		<td>学生参加考试</td>
	</tr>
    <tr>
		<td>参与者</td>
		<td>学生</td>
	</tr>
    <tr>
		<td>涉众</td>
		<td>学生、考生、学员、学校</td>
	</tr>
    <tr>
		<td>扩展点</td>
		<td>成绩查询</td>
	</tr>
    <tr>
		<td>前置条件</td>
		<td>学生成功登录到本系统，选择班级</td>
	</tr>
    <tr>
		<td>后置条件</td>
		<td>学生的答案会被记录到系统中</td>
	</tr>
    <tr>
		<td>基本事件流</td>
		<td>
        	<ol>
                <li>该用例开始于学生成功登录，选择班级</li>
                <li>学生选择考试</li>
                <li>系统显示该考试的相关信息</li>
                <li>学生确认信息后，进入考试（1）</li>
                <li>系统显示考试页面</li>
                <li>学生开始答题，在规定的时间内完成并提交（2、3）</li>
                <li>系统计算考试成绩，并显示考试成绩</li>
            </ol>
        </td>
	</tr>
    <tr>
		<td>备选事件流</td>
		<td>
            <ol>
                <li>考试可能未开始或已结束，或者选错</li>
                <ol>
                    <li>未开始或已结束的考试不得进入</li>
                    <li>用户可以结束该用例，也可以加入其它的考试</li>
                </ol>
                <li>学生可能会刷新，关闭浏览器等误操作</li>
                <ol>
                    <li>系统会每隔10s将答案保存到服务器上，系统会保存答题信息到本地</li>
                    <li>用户再次进入考试，做题记录会恢复</li>
                </ol>
                <li>学生可能没有在规定的时间进行提交或忘记提交</li>
                <ol>
                    <li>系统强制结束考试，将考试信息自动保存</li>
                    <li>用户结束该用例</li>
                </ol>
            </ol>
        </td>
	</tr>
</table>

### 表设计

该系统中的数据库表和表之间的关系，以及单个表中的字段和属性

![](https://www.bestguo.top/journal/ssm-online-exam/Diagram_1.png)