> This is pre-planning / highly experimental for now

# Safe Browser

A browser that hands back control to you in a fashion which keeps you safe

> This only adds safety on top of other components which provide security.

Based on QT WebEngine


## Usage

	git clone https://github.com/hilbix/sb.git
	cd sb
	git submodule update --init --recursive		# 3GB+ download
	# make update
	make
	sudo make install



## Rationale

I have no time.

No time to always think about all those lunacy out there.

But all major browsers do not give you any control, the minimum you need are extensions like

- ublock-origin to block things you do not want
- noscript to block unneccessary stuff
- request-control to fix broken patronizing
- greasmonkey to change things the way you want

And still there is absolutely no protection against privacy threats like unknown tracking pixels.

The Web now is older than 25 years and still no solution?  This makes me angry.

But I have no time.

Luckily there are others who implemented the most of the problematic work.
Like providing a web component which is the hardest thing to do.

Implementing that myself would be far too complicate.
However implementing the rest on top seems viable.

Hence here we have: Safe Browser


## About safety

Security in Safe Browser is something completely different,
compared to what you might have in mind.

Safe Browser does not make things magically safe for you.
This is your taks.  Safe Browser is only the tool to reach that goal.

- Safety cannot be magically automated
- Safety must not patronizing
- Safety does not come free

Hence safety is fully up to you.  With Safe Browser you are in charge, not the machine.
If you want to live in danger, Safe Browser is fine with this.
Because this is your decision, not somehting Safe Browser has to decide.

So the policy is:

- Everything not allowed is prohibited
- You make the rules what is allowed
- Safe Browser obeys these rules

Hence:

- There is no https enforcement, unless you decide so.
- There are no big ugly complex warning plates if something is different than thought
- There is only one policy, and there are no exceptions to the rules.

Except if you decide different.

This way you can be safe that your orders are followed exactly as you like.
And everything else is verboten by default.

Also note:

You cannot secure things if you are not safe on the first place.


## FAQ

Is it secure?

- Probably no.  It's as secure as QT WebEngine

Security updates?

- This heavily depends on upstream
- `make update && make all && sudo make install`

WTW why?

- Because I can

Binaries?

- I do only maintain sources, you should compile the binaries yourself.
- If you want to contribute, see below

QT and QT WebEngine?

- QT and QT WebEngine are highly portable
- However the hooks of SB might be a problem.
- Also QT WebView is too limited, so no iOS and no Android, sorry

Non-Linux?

- Sorry, I am only into Linux
- If you know how to port, please tell

CirrusCI?

- It's the only one which does not compromize the GH account's security.

License?

- Free as free beer, free speech and free baby.
- Except for the libraries and submodules.  These might have other Free Software licenses.

Question? Bug?

- Open Issue on GitHub.  Evenually I listen

Contrib?  Fix?

- Open PR on GH.  Eventyally I listen.

I want to maintain, too!

- Highlander principle, hence Clone+PR.

Who are you?

- Never mind.

