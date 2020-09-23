---
layout:     post
title:      7x24 自动向CSE GPGPU cluster提交任务
summary:    7x24 Automated Slurm Job Submission
tags: [slurmmy, automation]
comments: false
category: blog
modified: 7/11/2020, 21:00:24
---

*[English version][slurmmy-intro-en]* available.

最近这段时间在做一个ML的project，难免要当一下调参侠，用CSE的GPGPU cluster来跑成千上万组hyperparameter。
虽然CSE的cluster算力还不错，但是CSE还是利用slurm对任务提交还是做了很多限制。

最令人难受的就是同一个用户同时只能有最多4个pending/running的任务。

这个限制下，其实如果只是做做简单的training/testing倒也没有什么问题，但是当需要finetune的hyperparameter的数量一多，就会感到掣肘。
如果把每组hyperparameter单独提交，同时只能跑四个任务的限制就需要用户大量手动提交，效率很低。多把几组hyperparameter放在一起的话，一不留神就会超时。四周问了问，似乎大家也没有很好的解决方案。

为了可以 ~~摸鱼~~充分利用时间，我用Python写了一个简单的脚本，叫做slurmmy，来解决这个问题。我看现在做ML research的同学还挺多的，所以我就把脚本放在了这个[GitHub repo][slurmmy-repo], 大家可以看看能不能用得上，（⭐，🙏。

`slurmmy`的原理并不复杂。读取了所有command之后，`slurmmy`会持续读取slurm queue的信息，一旦有任务完成，出现了空位，一个新的任务会被自动提交。同时，`slurmmy`也可以将若干command合为一批进行提交，或是在computing server上通过多线程同时执行多个command，以提高cpu瓶颈任务的效率。

![slurmmy-svg][slurmmy-svg]

具体流程也非常简单：

- `ssh`到linux5-16
- 把需要run的任务对应的shell command写/生成在一个文本文件中 (`my-tasks.txt`)
- Clone `slurmmy` 并执行slurmmy中的`dispatcher.py`，根据自己的需要传入对应的arguments/使用nohup
  - `nohup python slurmmy/dispatcher.py my-tasks.txt --slurm-args="-c 10 --gres=gpu:1 -p gpu_24h" &`
- &#128554;

### Tips

- 可以用`nohup`和`&`把slurmmy挂在后台
- 如果是知道单个任务的时间较短，可以适当调大`--tasks-per-allocation`，减少slurm scheduling的overhead
- 如果CPU是程序瓶颈，可以考虑多进程并行，调大`--num-processes`，这个值应当不小于`--slurm-args`中`-c`，也就是向slurm申请的core的数量
- 留意CSE Linux的重启周期，奇数/偶数linux server在奇数/偶数月的第一个星期一早上6点重启。
- 使用[template]来获得邮件提醒等有趣功能

[slurmmy-repo]: https://github.com/desmondlzy/slurmmy
[slurmmy-svg]: {{ site.baseurl }}/assets/images/slurmmy-svg.png
[slurmmy-intro-en]: {{ site.baseurl }}/slurmmy-intro-en
[template]: https://github.com/desmondlzy#template