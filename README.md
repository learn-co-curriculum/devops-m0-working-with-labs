# Working with Labs

## Introduction

For most of the labs in this course, your submission will be automatically tested in *GitHub*. This has the benefit of allowing you to keep retrying until you get a result that passes all the tests!

In this short guide we will go over how the whole process works.

## Cloning

Every lab in this course is contained within a *GitHub* repository. You can click the *GitHub* icon (![GitHub Icon](https://curriculum-content.s3.amazonaws.com/git-logo-gray.png)) in the top right corner of the lab to be taken to the repo's page.

From there, you can click the `Fork` button at the top right of the page to create a fork of the lab:

![Fork Button](http://readme-pics.s3.amazonaws.com/fork_button.jpg)

Add your name before the repository name, e.g.: `john-doe-devops-m0-working-with-labs`.

Once you have your fork set up, go ahead and clone it in your virtual machine using `git clone <url>`.

Go ahead and clone this lesson, as it is actually a very simple lab so you can see how it works!

## Working on the lab

Once cloned, `cd` into the new directory. You are ready to begin working on the lab!

In order to have your submission tested, all you need to do is commit and push some code.

The "goal" of this lab is to make a script called `script.sh` that outputs `hello` and `goodbye` each in a separate line.

Go ahead and make the script, then save it in the root directory of our forked repo:

```bash
echo "hello"
```

Now let's add the file, commit the changes, and push it upstream:

```bash
git add -A
git commit -am "Initial commit"
git push origin main
```

## Testing

Now that our script has been pushed, you can go to the repo in *GitHub* to view the test results.

If one or more tests fail, you will see a red `X` icon:

![failed](https://curriculum-content.s3.amazonaws.com/6685/devops-m0-working-with-labs/failed.png)

To view the results in more detail, go to the `Actions` tab in the repo page, and click the latest (topmost) row. If you scroll all the way down, you will see the test results:

![results](https://curriculum-content.s3.amazonaws.com/6685/devops-m0-working-with-labs/test-summary.png)

As you can see, we passed the first test, but not the second. That's because our script only outputs `hello` and not `goodbye`!

Let's go ahead and amend these changes to our script:

```bash
echo "hello"
echo "goodbye"
```

Commit the changes, and then push it upstream. Let's view it now:

![changes-1](https://curriculum-content.s3.amazonaws.com/6685/devops-m0-working-with-labs/changes-1.png)

Looking good!

![changes-2](https://curriculum-content.s3.amazonaws.com/6685/devops-m0-working-with-labs/changes-2.png)

## Conclusion

That's it for how to work with labs! Make sure to pay close attention to the lab instructions; for instance, certain files need to be named certain ways, like in this case `script.sh`.