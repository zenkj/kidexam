var i, j, k, m, n;

// 一年级上学期
for (i=0; i<=20; i++) {
    for (j=0; j<=20; j++) {
        // 10以内加法
        if (i+j <= 10) console.log('1a ' + i + '+' + j + '=' + (i+j));
        // 10以内减法
        if (i<=10 && i-j>=0) console.log('1b ' + i + '-' + j + '=' + (i-j));
        // 20以内不进位加法
        if ((i>=10 || j>=10) && i+j <= 20) console.log('1c ' + i + '+' + j + '=' + (i+j));
        // 20以内不退位减法
        if (i>=10 && i-j>=0 && i%10>=j%10) console.log('1d ' + i + '-' + j + '=' + (i-j));
        // 20以内进位加法
        if (i<10 && j<10 && i+j>10) console.log('1e ' + i + '+' + j + '=' + (i+j));
        // 20以内退位减法
        if (i-j>0 && i%10<j%10) console.log('1f ' + i + '-' + j + '=' + (i-j));

        for (k=0; k<=20; k++) {
            // 10以内连加
            if (i+j+k <= 10) console.log('1g ' + i + '+' + j + '+' + k + '=' + (i+j+k));
            // 10以内连减
            if (i<=10 && i-j-k>=0) console.log('1h ' + i + '-' + j + '-' + k + '=' + (i-j-k));
            // 10以内减加
            if (i<=10 && i-j>=0 && i-j+k<=10) console.log('1i ' + i + '-' + j + '+' + k + '=' + (i-j+k));
            // 10以内加减
            if (i+j<=10 && i+j-k>=0) console.log('1j ' + i + '+' + j + '-' + k + '=' + (i+j-k));
            // 20以内连加
            if (i+j+k>10 && i+j+k<=20) console.log('1k ' + i + '+' + j + '+' + k + '=' + (i+j+k));
            // 20以内连减
            if (i>10 && i-j-k>=0) console.log('1l ' + i + '-' + j + '-' + k + '=' + (i-j-k));
            // 20以内减加
            if (i-j>=0 && i-j+k>10 && i-j+k<=20) console.log('1m ' + i + '-' + j + '+' + k + '=' + (i-j+k));
            // 20以内加减
            if (i+j<=20 && i+j-k>=0) console.log('1n ' + i + '+' + j + '-' + k + '=' + (i+j-k));
        }
    }
}


// 一年级下学期
for (i=20; i<=100; i++) {
    for (j=0; j<=100; j+=10) {
        // 100以内不进位加整10数
        if (i+j <= 100) {
            console.log('2a ' + i + '+' + j + '=' + (i+j));
            console.log('2a ' + j + '+' + i + '=' + (i+j));
        }
        // 100以内不退位减整10数
        if (i-j >= 0) {
            console.log('2b ' + i + '-' + j + '=' + (i-j));
        }
    }
}

for (i=10; i<=100; i++) {
    for (j=0; j<10; j++) {
        // 100以内不进位加一位数
        if (i+j<=100 && i%10+j<10) {
            console.log('2c ' + i + '+' + j + '=' + (i+j));
            console.log('2c ' + j + '+' + i + '=' + (i+j));
        }
        // 100以内不退位减一位数
        if (i-j>=0 && i%10>=j) {
            console.log('2d ' + i + '-' + j + '=' + (i-j));
        }

        // 100以内进位加(一位数)
        if (i+j<=100 && i%10+j>=10) {
            console.log('2e ' + i + '+' + j + '=' + (i+j));
        }

        // 100以内退位减(一位数)
        if (i-j>=0 && i%10<j) {
            console.log('2f ' + i + '-' + j + '=' + (i-j));
        }
    }
}

for (i=10; i<100; i++) {
    for (j=10; j<100; j++) {
        // 100以内两位数不进位加
        if (i+j<=100 && i%10+j%10<10) {
            console.log('2g ' + i + '+' + j + '=' + (i+j));
        }
        // 100以内两位数不退位减
        if (i-j>=0 && i%10>=j%10) {
            console.log('2h ' + i + '-' + j + '=' + (i-j));
        } 
        // 100以内两位数进位加
        if (i+j<=100 && i%10+j%10>=10) {
            console.log('2i ' + i + '+' + j + '=' + (i+j));
        }
        // 100以内两位数退位减
        if (i-j>=0 && i%10<j%10) {
            console.log('2j ' + i + '-' + j + '=' + (i-j));
        }
    }
}

// 100以内连加(175077)
for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
        for (k=0; k<100; k++) {
            if (i+j+k<=100 && i+j+k>20)
                console.log('2k ' + i + '+' + j + '+' + k + '=' + (i+j+k));
        }
    }
}

// 100以内连减(169929)
for (i=21; i<100; i++) {
    for (j=0; j<100; j++) {
        for (k=0; k<100; k++) {
            if (i-j-k>=0)
                console.log('2l ' + i + '-' + j + '-' + k + '=' + (i-j-k));
        }
    }
}

// 二年级上学期
for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
        // 表内乘法
        console.log('3a ' + i + '*' + j + '=' + (i*j));
        // 表内除法
        if (i!=0) console.log('3b ' + (i*j) + '/' + i + '=' + j);
        for (k=0; k<10; k++) {
            if (i*j<10 || j*k<10 || i*k<10) {
                // 表内连乘
                console.log('3c ' + i + '*' + j + '*' + k + '=' + (i*j*k));
                // 表内连除
                if (i!=0 && j!=0) console.log('3d ' + (i*j*k) + '/' + i + '/' + j + '=' + k);
            }
            // 表内除乘
            if (i!=0) {
                console.log('3e ' + (i*j) + '/' + i + '*' + k + '=' + (j*k));
            }
            // 表内乘除
            if (k!=0 && i*j%k==0) {
                console.log('3f ' + i + '*' + j + '/' + k + '=' + (i*j/k));
            }
        }
        for (k=0; k<100; k++) {
            if (i*j+k<=100 && i*j%10+k%10<10) {
                // 乘加(不进位)
                console.log('3g ' + i + '*' + j + '+' + k + '=' + (i*j+k));
                // 加乘(不进位)
                console.log('3h ' + k + '+' + i + '*' + j + '=' + (k+i*j));
            }
            // 乘减(不退位)
            if (i*j-k>=0 && i*j%10>=k%10)
                console.log('3i ' + i + '*' + j + '-' + k + '=' + (i*j-k));
            // 减乘(不退位)
            if (k-i*j>=0 && k%10>=i*j%10)
                console.log('3j ' + k + '-' + i + '*' + j + '=' + (k-i*j));
            if (i*j+k<=100 && i*j%10+k%10>=10) {
                // 乘加(进位)
                console.log('3k ' + i + '*' + j + '+' + k + '=' + (i*j+k));
                // 加乘(进位)
                console.log('3l ' + k + '+' + i + '*' + j + '=' + (k+i*j));
            }
            // 乘减(退位)
            if (i*j-k>=0 && i*j%10<k%10)
                console.log('3m ' + i + '*' + j + '-' + k + '=' + (i*j-k));
            // 减乘(退位)
            if (k-i*j>=0 && k%10<i*j%10)
                console.log('3n ' + k + '-' + i + '*' + j + '=' + (k-i*j));
            if (i!=0 && j+k<=100 && j%10+k%10<10) {
                // 除加(不进位)
                console.log('3o ' + (i*j) + '/' + i + '+' + k + '=' + (j+k));
                // 加除(不进位)
                console.log('3p ' + k + '+' + (i*j) + '/' + i + '=' + (k+j));
            }
            // 除减(不退位)
            if (i!=0 && j-k>=0 && j%10>=k%10) {
                console.log('3q ' + (i*j) + '/' + i + '-' + k + '=' + (j-k));
            }
            // 减除(不退位)
            if (i!=0 && k-j>=0 && k%10>=j%10) {
                console.log('3r ' + k + '-' + (i*j) + '/' + i + '=' + (k-j));
            }
            if (i!=0 && j+k<=100 && j%10+k%10>=10) {
                // 除加(进位)
                console.log('3s ' + (i*j) + '/' + i + '+' + k + '=' + (j+k));
                // 加除(进位)
                console.log('3t ' + k + '+' + (i*j) + '/' + i + '=' + (k+j));
            }
            // 除减(退位)(不存在)
            if (i!=0 && j-k>=0 && j%10<k%10) {
                console.log('3u ' + (i*j) + '/' + i + '-' + k + '=' + (j-k));
            }
            // 减除(退位)
            if (i!=0 && k-j>=0 && k%10<j%10) {
                console.log('3v ' + k + '-' + (i*j) + '/' + i + '=' + (k-j));
            }
        }
    }
}

// 二年级下学期 
for (i=100; i<1000; i+=100) {
    for (j=100; j<1000; j+=100) {
        // 整百加
        if (i+j<=1000) {
            console.log('4a ' + i + '+' + j + '=' + (i+j));
        }
        // 整百减
        if (i>=j) {
            console.log('4b ' + i + '-' + j + '=' + (i-j));
        }
    }
}
for (i=10; i<1000; i+=10) {
    for (j=10; j<1000; j+=10) {
        // 整百整十加(不进位)
        if (i+j<=1000 && i%100+j%100<100)
            console.log('4c ' + i + '+' + j + '=' + (i+j));
        // 整百整十加(进位)
        if (i+j<=1000 && i%100+j%100>=100)
            console.log('4d ' + i + '+' + j + '=' + (i+j));
        // 整百整十减(不退位)
        if (i>=j && i%100>=j%100)
            console.log('4e ' + i + '-' + j + '=' + (i-j));
        // 整百整十减(退位)
        if (i>=j && i%100<j%100)
            console.log('4f ' + i + '-' + j + '=' + (i-j));
    }
}
