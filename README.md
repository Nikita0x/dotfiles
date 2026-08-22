NVIDIA:
`IMPORTANT`: Чтобы не зависала система на играх, выставить `Performance Mode`, а не `On Demand`.

Так же включить `Accessibility` -> `Large Text`.

Так же - чтобы работал `helix mode` для `ru`, `uk` раскладок - необходимо отключить `ibus` в системе, этот input framework - преднозначен для сложных вводов (ктиайский, японский и тд) - мне он не нужен, и без него все работает.

You also need to generate new SSH key for Github (after fresh install)

1. `ssh-keygen -t ed25519 -C "email@gmail.com"` //generate new key
2. Enter
3. Enter
4. Enter
5. `cd ~/.ssh && cat id_ed25519.pub | xclip -selection clipboard` //enter directory and copy the insides of the key

6) Github -> Profile -> Settings -> SSH and GPG keys -> New SSH key

<p class="has-line-data" data-line-start="11" data-line-end="12">2026</p>
