# LifeLog: Track + Analyze Your Day-to-Day

**When was the last time you took the dog out?**

> I uhh...I think about 2 hours ago? Shit, I can't remember...

**Did you give the dog her medication yet today?**

> I...I think so? Wait, I'm not sure, she isn't acting like it, so maybe not...

**Did you take YOUR meds yet today?**

> I was so busy with work I...forgot?

**Doctor:**

> I need some data to diagnose your condition. Keep this log for 2 weeks and give it
> back to me on a piece of paper.

You:

> But your clinic is 900km away! And the USPS isn't exactly known for their speed these
> days. Telemedicine is awesome and all, but if we can video conference like this,
> **surely there's a better way!**

LifeLog is that better way.

## About

| Status            | Vaporware |
| Built In          | Elixir / Phoenix |
| License           | MIT or something, will figure that out later |
| Production-ready? | **HELL NO!** | 
| Type              | HTTP API with optional HTML5/CSS/JS front-end for the browser |
| Database Format   | SQLite3 (for now) |
| OS Requirements   | If it runs Erlang bytecode, it should run this |

### The Story: A man and his dog

So there I was, a new dog owner, staring at the cutest little rescue pup on Earth. **And I was worried about her.**

It was January 2021. I'd just adopted a chihuahua mix from the Humane Society and brought her home. Over the first few days I quickly noticed that she had an unusual habit of begging to be let outside to "do her business" _extremely frequently_. Like, to the point of absurdity, almost.

> Starfox, it's only been 15 minutes since you last peed! What the hell?! I have a job, ya know!

She didn't care. Just kept looking at me with those big brown eyes and wagging that tail. Of course, I caved. Out we went.
Again. And again. And again.

Over time I started writing down every time I took her out in what I called "the dog log" to see what the delta was.
That helped me train her to wait longer between excursions, though we're still working on it.

But see, I'm terrible at keeping paper records of any kind, and that's horribly error prone anyway. Not to mention, it's not like I can readily share easily-visualized data with the vet to help them diagnose whether or not my "adorkable" little pup has a UTI, for example.

So I conceived of an app, consisting of an API and one or more front-end clients (browser, possibly native iOS, Android, maybe even Linux desktop?) that you could shove in data and dig it out at will in a visualized way (graphs/charts etc.). I told myself "yeah someday I'll build that". And life went on, distractions abundant. I never built anything.

Fast forward about 9 months.

I got prescribed some medication. Doc said, "take one pill twice a day for 3 months". Ok, cool. Only one problem with that: 

No matter what I do, I always, _no matter WHAT_, forget if I took it or not on any given day. I've tried every hack/trick in the book
and they all fail because life is just too complex to be perfectly consistent beyond a few days at most. So I wound up asking myself:

> Did I take `$SOME_DAMN_PILL` yet today? Or not? I better take one anyway just in case...or is that too much of a risk?

But it didn't stop there. Another doctor asked me to keep a journal of my working, recreation, and sleep times and tasks as well for a separate thing.

So now I had 3 major things to log, and decided it was time to build **one app to rule them all**.

That's LifeLog.
