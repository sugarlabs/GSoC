# Google Summer Of Code 2020 - Final Work Product
![](./images/logo.svg) 
### sugarlabs/[musicblocks](https://github.com/sugarlabs/musicblocks) 
### author:sksum ([Saksham Mrig](https://github.com/sksum)) 
<br/>

#### Project Details 
- Project Title: [***Resolve 100 issues in Music Blocks***](https://summerofcode.withgoogle.com/projects/#6367628337086464)
- Proposal: [Proposal](./prop.pdf)
- Organization: [Sugarlabs](https://github.com/sugarlabs/)
- Mentors : [Walter Bender](https://github.com/walterbender)<br />
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;[Devin Ulibarri](https://github.com/pikurasa)<br />
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;[Sumit Srivastava](https://github.com/sum2it)


## Abstract/Summary 
Spending the summer of 2020 working on MusicBlocks has been an amazing experience.
I'm very grateful to Sugarlabs for accepting my contributions and supporting me through the process of fixing bugs and adding new features.<br/>
For the past 4 months I, along with my peers, have been working tirelessly to make musicblocks better.
I have successfully added new features, widgets, new Blocks and also refactored a lot of code.<br />
Issues solved this summer : 71 (complete List of issues at the bottom) over a course of roughly 90 days, these included new additions, enhancements and bug fixes.
<br />

---
&nbsp;


## Highlights
- [MusicKeyboard](https://github.com/sugarlabs/musicblocks/pull/2507) and [Midi](https://github.com/sugarlabs/musicblocks/pull/2322): <br />
    The MusicKeyboard widget in MusicBlocks now considers BPM and Tempo info to generate notes.
    The MusicKeyboard widget now accepts Midi keyboard (USB) as an input source with the help of the [Web MIDI API](https://www.w3.org/TR/webmidi/). There are still some performance issues with the [.mid file input]()
    &nbsp;

    ![keyboard](./images/midi.gif)
    &nbsp;

- Widgets: <br />
    [Oscilloscope](https://github.com/sugarlabs/musicblocks/pull/2447) widget was added this summer which allows users to visualize musical waveforms.
    &nbsp;

    ![oscilloscope](./images/oscilloscope.gif)
    &nbsp;

    Issues related to [pitch slider](https://github.com/sugarlabs/musicblocks/pull/2493)  were mostly resolved.

    We have extended the functionality of the [temperament](https://github.com/sugarlabs/musicblocks/pull/2365) widget to create multiple custom pitches.
    &nbsp;

    ![pie](./images/pie.png) 
    &nbsp;

    [Statistics](https://github.com/sugarlabs/musicblocks/pull/2540) are now displayed as a widget and we have added new Stats which are better oriented for musical parameters and some of them are used to suggest tags when publishing.
    &nbsp;

    ![stats](./images/stats.png)
    &nbsp;


- [Palette](https://github.com/sugarlabs/musicblocks/pull/2392)  & [Palette menu](https://github.com/sugarlabs/musicblocks/pull/2416): <br />
    Palette and Palette menu buttons now use simple HTML/CSS instead of CreateJS, this has made the user experience much smoother and also handles any issues pertaining to layout distortion on resize.
    &nbsp;

    ![palette](./images/palette.gif)
    &nbsp;

- [on everybeatdo](https://github.com/sugarlabs/musicblocks/pull/2378): <br />
    This is a new block which uses a separate turtle as a beat companion to run tasks on every beat regardless of note playing, whereas the **on everynotedo** block only worked when a note was queued in the project.
- [Search](https://github.com/sugarlabs/musicblocks/pull/2502): <br />
    I helped revamp the jQuery UI Search widget to use images as identifiers. The widget now also uses id-item pairs to maintain uniqueness of block-search queries.
    &nbsp;

    ![search](./images/search.gif)
    &nbsp;

- New Blocks: <br />
    Some of the blocks I helped develop this summer were :
    - [Pitch Analyser](https://github.com/sugarlabs/musicblocks/pull/2388) : Converts audio input to musical pitch.
     For more Info - https://musicblocks.net/2020/07/15/how-to-make-a-tuner-with-music-blocks/
    - [Panning](https://github.com/sugarlabs/musicblocks/pull/2445): allows mixing capabilities 
    
    &nbsp;
    along with [hover sensors](https://github.com/sugarlabs/musicblocks/pull/2328), [crescendo "within a note"](https://github.com/sugarlabs/musicblocks/pull/2437), [set grid](https://github.com/sugarlabs/musicblocks/pull/2337) and more.

    &nbsp;

    ![pitch](./images/pitch.gif)
    &nbsp;
---
&nbsp;
### You can get the complete list of issues closed and my Pull requests from [CODE](Code.md) or here :


<details open>
    <summary>
    Code
    </summary>

| ID | Issue | PR |
| ------ | ------ | ------ | 
| [1973](https://github.com/sugarlabs/musicblocks/issues/1973) | G_5 plays too short                                                                                | [2246](https://github.com/sugarlabs/musicblocks/pull/2246) |
| [2253](https://github.com/sugarlabs/musicblocks/issues/2253) | Default Strong and Weak for Common Meters                                                          | [2269](https://github.com/sugarlabs/musicblocks/pull/2269) |
| [2265](https://github.com/sugarlabs/musicblocks/issues/2265) | regression in change in pitch                                                                      | [2274](https://github.com/sugarlabs/musicblocks/pull/2274) |
| [2288](https://github.com/sugarlabs/musicblocks/issues/2288) | Paste JSON only works once                                                                         | [2294](https://github.com/sugarlabs/musicblocks/pull/2294) |
| [2293](https://github.com/sugarlabs/musicblocks/issues/2293) | Turtle loses track of position on running a turtle movement block after a bezier block is executed | [2294](https://github.com/sugarlabs/musicblocks/pull/2294) |
| [2329](https://github.com/sugarlabs/musicblocks/issues/2329) | Display Grid Block                                                                                 | [2337](https://github.com/sugarlabs/musicblocks/pull/2337) |
| [2353](https://github.com/sugarlabs/musicblocks/issues/2353) | mouse over/mouse out events not working as expected                                                | [2354](https://github.com/sugarlabs/musicblocks/pull/2354) |
| [2373](https://github.com/sugarlabs/musicblocks/issues/2373) | Measurement Blocks' Clamp does not work                                                            | [2377](https://github.com/sugarlabs/musicblocks/pull/2377) |
| [2366](https://github.com/sugarlabs/musicblocks/issues/2366) | Searching a blocks loads two blocks of the same type                                               | [2379](https://github.com/sugarlabs/musicblocks/pull/2379) |
| [2385](https://github.com/sugarlabs/musicblocks/issues/2385) | Revamp Palette                                                                                     | [2392](https://github.com/sugarlabs/musicblocks/pull/2392) |
| [2241](https://github.com/sugarlabs/musicblocks/issues/2241) | Recommended Tags (on Planet) arbitrated by blocks used                                             | [2430](https://github.com/sugarlabs/musicblocks/pull/2430) |
| [1454](https://github.com/sugarlabs/musicblocks/issues/1454) | Crescendo "within a note"                                                                          | [2437](https://github.com/sugarlabs/musicblocks/pull/2437) |
| [604](https://github.com/sugarlabs/musicblocks/issues/604)   | Stereo (Left <--> Right) Block                                                                     | [2445](https://github.com/sugarlabs/musicblocks/pull/2445) |
| [2444](https://github.com/sugarlabs/musicblocks/issues/2444) | Oscilloscope Widget                                                                                | [2447](https://github.com/sugarlabs/musicblocks/pull/2447) |
| [2495](https://github.com/sugarlabs/musicblocks/issues/2495) | Regression in Simple Tuplet and Tuplet (Phrase Maker)                                              | [2515](https://github.com/sugarlabs/musicblocks/pull/2515) |
| [2466](https://github.com/sugarlabs/musicblocks/issues/2466) | close search after selecting a block                                                               | [2502](https://github.com/sugarlabs/musicblocks/pull/2502) |
| [2494](https://github.com/sugarlabs/musicblocks/issues/2494) | Use Print Block for Display Grid                                                                   | [2501](https://github.com/sugarlabs/musicblocks/pull/2501) |
| [2482](https://github.com/sugarlabs/musicblocks/issues/2482) | Mouse/Turtle should not be draggable when shrunk                                                   | [2491](https://github.com/sugarlabs/musicblocks/pull/2491) |
| [2474](https://github.com/sugarlabs/musicblocks/issues/2474) | oscilloscope widget should auto-open on play                                                       | [2492](https://github.com/sugarlabs/musicblocks/pull/2492) |
| [2052](https://github.com/sugarlabs/musicblocks/issues/2052) | Enable scrolling in palettes menu                                                                  | [2392](https://github.com/sugarlabs/musicblocks/pull/2392) |
| [1860](https://github.com/sugarlabs/musicblocks/issues/1860) | musickeyboard only saves default synth                                                             | [2296](https://github.com/sugarlabs/musicblocks/pull/2296) |
| [2302](https://github.com/sugarlabs/musicblocks/issues/2302) | Set Relative Volume is Broken                                                                      | [2303](https://github.com/sugarlabs/musicblocks/pull/2303) |
| [2221](https://github.com/sugarlabs/musicblocks/issues/2221) | "Hover" as a sensor event                                                                          | [2328](https://github.com/sugarlabs/musicblocks/pull/2328) |
| [2310](https://github.com/sugarlabs/musicblocks/issues/2310) | Does `Store in Box` have two name inputs?                                                          | [2321](https://github.com/sugarlabs/musicblocks/pull/2321) |
| [1899](https://github.com/sugarlabs/musicblocks/issues/1899) | Accept MIDI input                                                                                  | [2322](https://github.com/sugarlabs/musicblocks/pull/2322) |
| [2334](https://github.com/sugarlabs/musicblocks/issues/2334) | Funny behavior with the multiply note value clamp                                                  | [2343](https://github.com/sugarlabs/musicblocks/pull/2343) |
| [2263](https://github.com/sugarlabs/musicblocks/issues/2263) | Repeat of zero (and below)                                                                         | [2355](https://github.com/sugarlabs/musicblocks/pull/2355) |
| [2389](https://github.com/sugarlabs/musicblocks/issues/2389) | Set Pitch Number Offset does not work                                                              | [2394](https://github.com/sugarlabs/musicblocks/pull/2394) |
| [2317](https://github.com/sugarlabs/musicblocks/issues/2317) | Repetition of block names when searching a block name using search                                 | [2421](https://github.com/sugarlabs/musicblocks/pull/2421) |
| [2420](https://github.com/sugarlabs/musicblocks/issues/2420) | Three "do" in search \| More description appreciated                                               | [2518](https://github.com/sugarlabs/musicblocks/pull/2518) |
| [1463](https://github.com/sugarlabs/musicblocks/issues/1463) | Make middle mouse scroll more sensitive                                                            | [2443](https://github.com/sugarlabs/musicblocks/pull/2443) |
| [855](https://github.com/sugarlabs/musicblocks/issues/855)   | Drag to edge of screen with "enable scrolling" on should scroll the screen                         | [2448](https://github.com/sugarlabs/musicblocks/pull/2448) |
| [1891](https://github.com/sugarlabs/musicblocks/issues/1891) | `Note Counter` and `Sum Note Values`                                                               | [2456](https://github.com/sugarlabs/musicblocks/pull/2456) |
| [2465](https://github.com/sugarlabs/musicblocks/issues/2465) | upgrade to latest tone.js release                                                                  | [2470](https://github.com/sugarlabs/musicblocks/pull/2470) |
| [2234](https://github.com/sugarlabs/musicblocks/issues/2234) | Sample Instruments Pitch is not Transformed                                                        | [2470](https://github.com/sugarlabs/musicblocks/pull/2470) |
| [2434](https://github.com/sugarlabs/musicblocks/issues/2434) | Update Tone.js to V 14.7.39                                                                        | [2470](https://github.com/sugarlabs/musicblocks/pull/2470) |
| [2485](https://github.com/sugarlabs/musicblocks/issues/2485) | Two Design Issues with Pitch Slider                                                                | [2493](https://github.com/sugarlabs/musicblocks/pull/2493) |
| [2521](https://github.com/sugarlabs/musicblocks/issues/2521) | Putting pitch blocks directly into trash does not generate silence                                 | [2523](https://github.com/sugarlabs/musicblocks/pull/2523) |
| [2520](https://github.com/sugarlabs/musicblocks/issues/2520) | Run Slowly and Step-by-Step is broken                                                              | [2524](https://github.com/sugarlabs/musicblocks/pull/2524) |
| [2527](https://github.com/sugarlabs/musicblocks/issues/2527) | Increase Click and Drag Area in Palette                                                            | [2529](https://github.com/sugarlabs/musicblocks/pull/2529) |
| [2433](https://github.com/sugarlabs/musicblocks/issues/2433) | right click save stack 2433                                                                        | [2433](https://github.com/sugarlabs/musicblocks/pull/2433) |
| [1744](https://github.com/sugarlabs/musicblocks/issues/1744) | Recorder breaks synth                                                                              | [2490](https://github.com/sugarlabs/musicblocks/pull/2490) |
| [1898](https://github.com/sugarlabs/musicblocks/issues/1898) | Combination of `On strong beat do` and `On every note do` not working                              | [2378](https://github.com/sugarlabs/musicblocks/pull/2378) |
| [1882](https://github.com/sugarlabs/musicblocks/issues/1882) | Tag Suggestions for Planet Publish                                                                 | [2430](https://github.com/sugarlabs/musicblocks/pull/2430) |
| [1853](https://github.com/sugarlabs/musicblocks/issues/1853) | Upload and download functionality in Planet does not seem to work                                  | [2409](https://github.com/sugarlabs/musicblocks/pull/2409) |
| [2409](https://github.com/sugarlabs/musicblocks/issues/2409) | Fix "Open file" button in planet                                                                   | [2409](https://github.com/sugarlabs/musicblocks/pull/2409) |
| [1118](https://github.com/sugarlabs/musicblocks/issues/1118) | Start is initiated when saving as .wav?                                                            | [2542](https://github.com/sugarlabs/musicblocks/pull/2542) |
| [2390](https://github.com/sugarlabs/musicblocks/issues/2390) | `On every beat do` is always one beat behind                                                       | [2541](https://github.com/sugarlabs/musicblocks/pull/2541) |
| [2351](https://github.com/sugarlabs/musicblocks/issues/2351) | Temperament Widget Enhancements                                                                    | [2365](https://github.com/sugarlabs/musicblocks/pull/2365) |
| [2350](https://github.com/sugarlabs/musicblocks/issues/2350) | Temperament: Multiple Custom Pitches                                                               | [2365](https://github.com/sugarlabs/musicblocks/pull/2365) |
| [2349](https://github.com/sugarlabs/musicblocks/issues/2349) | Preview for Temperament Widget Only Plays Octave                                                   | [2365](https://github.com/sugarlabs/musicblocks/pull/2365) |
| [2348](https://github.com/sugarlabs/musicblocks/issues/2348) | Custom Pitch (via Temperament) not loaded, not present in palette                                  | [2352](https://github.com/sugarlabs/musicblocks/pull/2352) |
| [2347](https://github.com/sugarlabs/musicblocks/issues/2347) | Unknown Block on Custom Temperament Save                                                           | [2352](https://github.com/sugarlabs/musicblocks/pull/2352) |
| [2254](https://github.com/sugarlabs/musicblocks/issues/2254) | Blocks generated by Temperament Widget are jumbled at the left side of the screen                  | [2352](https://github.com/sugarlabs/musicblocks/pull/2352) |
| [2190](https://github.com/sugarlabs/musicblocks/issues/2190) | Temperament Widget: action block generating issue                                                  | [2352](https://github.com/sugarlabs/musicblocks/pull/2352) |
| [857](https://github.com/sugarlabs/musicblocks/issues/857)   | Statistics better oriented for musical parameters                                                  | [2540](https://github.com/sugarlabs/musicblocks/pull/2540) |
| [2513](https://github.com/sugarlabs/musicblocks/issues/2513) | Regression on Rawgit                                                                               | [2534](https://github.com/sugarlabs/musicblocks/pull/2534) |
| [1767](https://github.com/sugarlabs/musicblocks/issues/1767) | missing Meter Widget features                                                                      | [2530](https://github.com/sugarlabs/musicblocks/pull/2530) |
| [2484](https://github.com/sugarlabs/musicblocks/issues/2484) | Spurious Initiation when a Widget is open                                                          | [2509](https://github.com/sugarlabs/musicblocks/pull/2509) |
| [1875](https://github.com/sugarlabs/musicblocks/issues/1875) | Clicks During Musical Keyboard based on 'meter' and 'tempo'                                        | [2507](https://github.com/sugarlabs/musicblocks/pull/2507) |
| [2251](https://github.com/sugarlabs/musicblocks/issues/2251) | Beat Events triggered regardless of whether a note is played                                       | [2378](https://github.com/sugarlabs/musicblocks/pull/2378) |
| [2227](https://github.com/sugarlabs/musicblocks/issues/2227) | Code not running with "on strong beat", "on weak beat", and "on every note"                        | [2378](https://github.com/sugarlabs/musicblocks/pull/2378) |
| [2252](https://github.com/sugarlabs/musicblocks/issues/2252) | On Every Beat Do                                                                                   | [2378](https://github.com/sugarlabs/musicblocks/pull/2378) |
| [2458](https://github.com/sugarlabs/musicblocks/issues/2458) | Upon exit, upon reload, MB asks if you would like to save project, but does not ``                 | [2531](https://github.com/sugarlabs/musicblocks/pull/2531) |
| [2264](https://github.com/sugarlabs/musicblocks/issues/2264) | Pitch to hertz block always shows undefined for the first note                  ``                 | [2545](https://github.com/sugarlabs/musicblocks/pull/2545) |
| [2184](https://github.com/sugarlabs/musicblocks/issues/2184) | Widget reopen after some time                                                                      | [2509](https://github.com/sugarlabs/musicblocks/pull/2509) |
| [2533](https://github.com/sugarlabs/musicblocks/issues/2533) | phrase maker and hertz								                                                | [2553](https://github.com/sugarlabs/musicblocks/pull/2553) |
| [2483](https://github.com/sugarlabs/musicblocks/issues/2483) | Action Block support for Phrase Maker                                                              | [2553](https://github.com/sugarlabs/musicblocks/pull/2553) |

</details>
&nbsp;

---
&nbsp;

>***Thank You for Reading*** <br />
>*Regards -*<br />
>Saksham Mrig <br />
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![](./images/me.png)<br />

>Contact:
>- [LinkedIn](https://www.linkedin.com/in/saksham-mrig-b772851a3/)
>- [Github](https://github.com/sksum)
