# [QUEST 04] 물고기들의 움직임을 시뮬레이션 하기!

```

다음 조건을 활용하여 물고기가 물 속에서 움직이는 것을 출력해보자!

 조건 :
아래 물고기 리스트를 입력값으로 넣었을때 물고기의 움직임을 출력값으로 뱉어내도록 만들어봅시다.
 물고기의 움직임을 출력하는 함수 2개(컴프리헨션, 제너레이터)를 만듭니다.
컴프리헨션 함수에는 이름, 속도를 조합하고 제너레이터 함수에는 for문과 yield문를 활용합니다.
물고기 리스트를 입력받으면, 2개의 함수는 물고기 이름과, 속도를 출력해야 합니다.

출력 예시
===
입력값 :

# 물고기 리스트 생성
fish_list = [
 {"이름": "Nemo", "speed": 3},
{"이름": "Dory", "speed": 5},
]
print("Using Comprehension:") show_fish_movement_comprehension(fish_list) print("Using Generator:") show_fish_movement_Generator(fish_list)

출력값 :
Using Comprehension:
Nemo is swimming at 3 m/s
Dory is swimming at 5 m/s
Using Generator:
Nemo is swimming at 3 m/s
Dory is swimming at 5 m/s


```

- 난이도 : 🟡🟡⚪⚪⚪
- 장르 : 함수, 컴프리헨션, 이터레이터, 제너레이터

## Peer Review

- 코더 : 전다빈
- 리뷰어 : 정인호

```

#물고기 리스트 생성
fish_list = [
 {"이름": "Nemo", "speed": 3},
{"이름": "Dory", "speed": 5},
]

def show_fish_movement_comprehension(fish_list):
  #표현식 for x in 이터러블 if 조건
  fish_movements = [f'{x["이름"]} is swimming at {x["speed"]} m/s' for x in fish_list]
  for fish_movement in fish_movements:
    print(fish_movement)

def show_fish_movement_Generator(fish_list):
  for x in fish_list:
    yield f'{x["이름"]} is swimming at {x["speed"]} m/s'


print("Using Comprehension:")
show_fish_movement_comprehension(fish_list)
print("Using Generator:")
#show_fish_movement_Generator(fish_list)
for i in show_fish_movement_Generator(fish_list):#내부적으로 next()를 호출
  print(i)

```

- [x] 1. 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
     > 네.

- [x] 2. 주석을 보고 작성자의 코드가 이해되었나요?
     > 네.

- [x] 3. 코드가 에러를 유발할 가능성이 없나요?
     > 네.

- [x] 4. 코드 작성자가 코드를 제대로 이해하고 작성했나요?
     > 네.

- [x] 5. 코드가 간결한가요?
     > 네.

## Reviw

물고기의 움직임을 출력하는 컴프리헨션, 제너레이터 함수를 만드셨고,
컴프리헨션 함수에는 이름, 속도를 조합하고 제너레이터 함수에는 for문과 yield문를 활용하였습니다. 출력문에는 물고기 이름과, 속도가 제대로 출력되고 있습니다.

간결하고 효율적으로 배운 내용을 잘 적용하신 것 같으며 파이썬 코딩을 배우는 입장에서 큰 도움이 되었습니다.
