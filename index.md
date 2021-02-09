---
layout: page
excerpt: "About Me..."
---

I am an undergrad in [Department of Computer Science and Engineering][cse-web] at [the Chinese University of Hong Kong][cuhk-web]. I am expected to finish my BSc. in Computer Science in June 2021. Check my [resume][my-resume] for more information. 
I am also with Tencent as a backend engineer intern, starting January 2021.

### Research Projects

My research interest lies in the intersection of computer graphics and machine learning.

![eigenvalues][eigenvalues]

Right now, I am working with [Prof. Fu Chi Wing][philip-web] and his PhD student [Xu Hao][xuhao-web], on a project in the field of computational design. We are studying a new way to analyze the stress over an object, and optimization of structure rigidity of assembly structures.

In my third year of study, I received Professor Charles Kao Scholarship and worked with [Prof. Anand Sarwate][anand-web] at Rutgers University.
We aimed to use a computationally efficient classifier such as SVM or LR to save the computation cost of a given deep neural network. The idea is to "cut", or more precisely, apply the classifier on a intermediate layer of the neural net at inference time. The efficient classifier performs binary classification for early stopping of the inference process. The neural net stops the forward pass if the binary classifier gives a very confident prediction, and hence, save the computation.

In the summer of 2019, I, with [Yuxiao Qu][qyx-web], worked on an NLP project, under the supervision of [Prof. Michael Lyu][michael-web]. We tried to devise a black-box method to attack state-of-the-art text classification models. Our project was awarded *Best Project* by the faculty out of 40+ projects.

![prism][prism]

### Side Projects

I like to work on personal projects on the side, for the maximized freedom there I have to 'hack' 
(~~break things without getting burned~~; 
~~write no documentation~~; have great fun when they land). 
Check them out through the links and please consider to give a star if you find any one of them interesting.

- [TimeWalk][timewalk-core]: Get your coding metrics! An extensible coding statistics tracking engine. [VSCode plugin][timewalk-vscode] available!
- [Slurmmy][slurmmy-github]: Scripts that automate slurm jobs submission, easing the process of training machine learning models. [blog post][slurmmy-intro-en]


[sid-web]: http://staff.ie.cuhk.edu.hk/~sjaggi/
[michael-web]: http://www.cse.cuhk.edu.hk/~lyu
[cse-web]: http://www.cse.cuhk.edu.hk
[cuhk-web]: http://www.cuhk.edu.hk
[xuhao-web]: http://www.cse.cuhk.edu.hk/~haoxu
[anand-web]: https://www.ece.rutgers.edu/~asarwate/
[philip-web]: http://www.cse.cuhk.edu.hk/~cwfu
[qyx-web]: https://cohenqu.github.io
[my-resume]: ./assets/files/cv.pdf
[timewalk-core]: https://github.com/desmondlzy/timewalk-core
[timewalk-vscode]: https://github.com/desmondlzy/timewalk-vscode
[slurmmy-github]: https://github.com/desmondlzy/slurmmy
[slurmmy-intro-en]: {{ site.baseurl }}/blog/slurmmy-intro-en
[prism]: {{ site.baseurl }}/assets/images/prism.jpg
[eigenvalues]: {{ site.baseurl }}/assets/images/eigenvalues.png