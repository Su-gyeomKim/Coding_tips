#!/bin/bash
#https://mug896.github.io/bash-shell/shebang.html
#https://linuxconfig.org/how-do-i-print-all-arguments-submitted-on-a-command-line-from-a-bash-script
:<< COMMENT
She (#) bang (!) 또는 shabang, hashbang 라인은 스크립트 파일의 첫줄에 사용하여 스크립트가 어떤 명령에 의해 실행될지를 지정합니다. 
프로그램의 경로는 절대경로나 현재 디렉토리로부터 상대경로를 사용할 수 있으며 변수는 사용할 수 없습니다. 
그리고 shebang 라인에서 사용할 수 있는 옵션은 하나로 제한됩니다.

#! /bin/bash               # bash 스크립트 실행을 위한 shebang line
...
#! /bin/sed -f             # sed 스크립트 실행을 위한 shebang line
...
#! /usr/bin/awk -f         # awk 스크립트 실행을 위한 shebang line
...
#! /usr/bin/perl -T        # perl 스크립트 실행을 위한 shebang line
...
#! /usr/bin/make -f        # make 파일도 하나의 명령으로 실행할 수 있다.
...
#! 문자는 텍스트 파일을 바이너리 실행파일처럼 실행할 수 있게 해주는 역할을 합니다. 
OS 가 실행 퍼미션이 설정된 파일을 실행할 때 처음에 #! 문자를 만나면 뒤에 이어지는 나머지 라인을 해당 파일을 실행하기 위한 인터프리터로 취급합니다.
그러므로 가령 foo 라는 이름의 파일이 있고 첫줄이 #!/bin/sed -f 로 시작한다면 프롬프트 상에서 foo arg1 arg2 arg3 명령을 실행할 경우 실제로는 /bin/sed -f foo arg1 arg2 arg3 와 같이 실행되게 됩니다.
COMMENT

#넘겨 받은 파라미터 갯수 만큼 반복하기 & 파라미터를 순서대로 변수로 사용하기
#iterating by number of pparsing parameter & using parameter as variable
for var in $@ ; do
  echo ${var}
done
